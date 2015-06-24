// Predicting precipitation reactions

clear;
clc;

printf("\t Example 16.10\n");

Ksp=1.1*10^-10;//solubility product of BaSO4

//for Ba2+ ion
N=0.004;//normality, M
V=200;//vol in mL
n=N*V/1000;//moles

//for K2SO4sol
N1=0.008;//normality, M
V1=600;//vol in mL
n1=N1*V1/1000;//moles

Nnew=n*1000/(V+V1);//conc of Ba2+ ions in final sol
N1new=n1*1000/(V+V1);//conc of SO4 2- ions in final sol

Q=Nnew*N1new;//as Q=[Ba2+][SO4 2-]
if(Q>Ksp) then//determination of precipitation
    printf("\t the solution is supersaturated and hence a precipitate will form\n");
    else 
    printf("\t the solution is not supersaturated and hence a precipitate will not form\n");
    end;
//End
