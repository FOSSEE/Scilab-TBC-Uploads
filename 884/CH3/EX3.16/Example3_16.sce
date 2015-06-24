//amount of reactants and products

clear;
clc;

printf("\t Example 3.16\n");

//(a)

//for TiCl4
mTiCl4=3.54*10^7;//mass of TiCl4, g
nTiCl4=mTiCl4/189.7;//moles of TiCl4
nTi1=nTiCl4*1;//moles of Ti

//for Mg
mMg=1.13*10^7;//mass of Mg, g
nMg=mMg/24.31;//moles of Mg
nTi2=nMg/2;//moles of Ti

if(nTi1>nTi2) then//finding imiting reagent
     nTi=nTi2;
else nTi=nTi1;
end;
mTi=nTi*47.88;

printf("\t the theoretical yield is : %1.2f*10^6 g\n",mTi*10^-6);

//(b)

mTiactual=7.91*10^6;//given, actual Ti produced
%yield=mTiactual/mTi*100;
printf("\t the percent yield is : %1.1f percent\n",%yield);

//End
