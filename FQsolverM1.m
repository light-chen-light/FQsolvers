function [OptNum,OptAP] = FQsolver(AP,Contr,Mission,Reach)
[m,n]=size(Contr);
if not(SIZEMATCH(AP,[n 1]))
    error(""The first input is an n*1 matrix, the second input is an m*n matrix, where n is the number of FQ."");
end
if or(not(SIZEMATCH(Mission,[m 1])),not(SIZEMATCH(Reach,[m 1])))
    error(""The second input is an m*n matrix, the third and the fourth input are m*1 matrices, where m is the number of missions considered."");
end
FQprob=optimproblem;
Num=optimvar('Num',n,'Type','integer','LowerBound',0);
FQprob.Constraints.Mission=Contr*Num>=Mission-Reach;
FQprob.Objective=AP.*Num;
[OptNum,OptAP]=solve(FQprob);
end

function R=SIZEMATCH(A,B)
n=max(abs(size(A)-size(B)));
if n=0
    R=true;
else
    R=false;
end
end
