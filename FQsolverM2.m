function [OptNum,OptAP] = FQsolverM2(AP,ContrCommon,ContrRare,Rare,Mission,Reach)
[m,n]=size(ContrCommon);
Contr=ContrCommon+Rare*ContrRare;
if not(SIZEMATCH(AP,[n 1]))
    error("The 1st input is an n*1 matrix, the 2nd and the 3rd input are m*n matrices, where n is the number of FQ.");
end
if or(not(SIZEMATCH(Mission,[m 1])),not(SIZEMATCH(Reach,[m 1])))
    error("The 2nd and the 3rd input are m*n matrices, the 4th and the 5th input are m*1 matrices, where m is the number of missions considered.");
end
FQprob=optimproblem;
Num=optimvar('Num',n,'Type','integer','LowerBound',0);
FQprob.Constraints.Mission=Contr*Num>=Mission-Reach;
FQprob.Objective=AP(1)*Num(1);
for i=2:n
    FQprob.Objective=FQprob.Objective+AP(i)*Num(i);
end
[Opt,OptAP]=solve(FQprob);
OptNum=Opt.Num;
end

function R=SIZEMATCH(A,B)
n=max(abs(size(A)-B));
if n==0
    R=true;
else
    R=false;
end
end