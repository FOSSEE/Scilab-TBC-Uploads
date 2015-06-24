//example 5.9

clear;
clc;

//Given:
T1=276;//Initial temperature[K]
Tf=278.7;//Freezing point temperature[K]
Tb=353.3;//Boiling point temperature[K]
T2=373;//Final temperature[K]
Hf=9870;//Standard enthalpy of fusion[J/mol]
Hv=30800;//Standard enthalpy of vaporization[J/mol]
Cp=136.1;//Specific heat capacity of benzene[J/K/mol]
mol.wt=78;//molecular weight of benzene[g/mol]
mass=200;//weight of solid benzene[g]
disp("     Cp doesnot change within this temp limit");

//To find the total entropy change of solid
n=mass/mol.wt;//no. of moles
S1=n*Cp*log(Tf/T1);//entropy change in heating [J/K]
S2=n*Hf/Tf;//entropy change in melting[J/K] 
S3=n*Cp*log(Tb/Tf);//entropy change in heating[J/K]
S4=n*Hv/Tb;//entropy change in vaporization[J/K]
S5=n*Cp*log(T2/Tb);//entropy change in heating[J/K]
S=S1+S2+S3+S4+S5;//total entropy change in heating from 276 to 373K

printf("Total entropy change in heating 200g benzene from 3 to 100`C is %f J/K",S);
 