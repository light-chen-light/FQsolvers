# FQsolvers
This is a MATLAB-based calculator to optimize your free quests toward missions in FGO events.
* Related Tools: https://github.com/shinli256/FQsolverData

# Version M1
## How to use:
* Download FQsolverM1.m to the MATLAB folder
* Prepare the required input data
* Run the code
[OptNum,OptAP]=FQsolverM1(AP,Contr,Mission,Reach);

## Convention:
* m is the number of missions considered
* n is the number of free quests (FQ) considered

## Inputs:
* AP is an n×1 double matrix, denoting the AP cost of each FQ
* Contr is an m×n double matrix, denoting the contribution of each FQ to each mission
* Mission is an m×1 double matrix, denoting the requirement of each mission
* Reach is an m×1 double matrix, denoting how much each mission is already met

## Outputs:
* OptNum is an n×1 double matrix, denoting how many times each FQ should be done
* OptAP is an 1×1 double, denoting the total AP cost of the FQs
