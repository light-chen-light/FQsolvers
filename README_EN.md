# FQsolvers
This is a MATLAB-based calculator to optimize your free quests toward missions in FGO events.
* Related Tools: https://github.com/light-chen-light/FQsolverData

# Version M1&M2
## How to use:
* (M1) Download FQsolverM1.m to the MATLAB folder
* (M2) Download FQsolverM2.m to the MATLAB folder
* Prepare the required input data
* (M1) Enter and run the code
* * [OptNum,OptAP]=FQsolverM1(AP,Contr,Mission,Reach);
* (M2) Enter and run the code
* * [OptNum,OptAP] = FQsolverM2(AP,ContrCommon,ContrRare,Rare,Mission,Reach);

## Convention:
* m is the number of missions considered
* n is the number of free quests (FQ) considered

## Inputs:
* AP is an n×1 double matrix, denoting the AP cost of each FQ
* (M1) Contr is an m×n double matrix, denoting the contribution of each FQ to each mission
* (M2) ContrCommon is a m×n double matrix, consisting of the contribution of all non-rare enemies in each free quest toward each mission.
* (M2) ContrRare is a m×n double matrix, consisting of the contribution of all rare enemies in each free quest toward each mission.
* (M2) Rare is a 1x1 double, referring to the default odd that a rare enemy shows up (in percentage); or if more than 1 rare enemy can show up, it denotes the expected value of number of rare enemies.
* Mission is an m×1 double matrix, denoting the requirement of each mission
* Reach is an m×1 double matrix, denoting how much each mission is already met

## Outputs:
* OptNum is an n×1 double matrix, denoting how many times each FQ should be done
* OptAP is an 1×1 double, denoting the total AP cost of the FQs
