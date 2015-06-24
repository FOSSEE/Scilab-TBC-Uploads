//example 8
// expansion of refrigant 134-a in refrigerator
clear
clc
disp('Refrigerant-134a that enters a capillary tube as saturated liquid.Therefore,from table of refrigerant-134a ')
P1=0.8  // initial pressure in MPa
T1=31.31 //initial temp. in Celsius
h1=95.47 //initial specific enthalpy in kJ/kg
disp('Flow through a capillary tube is a throttling process. Thus, the enthalpy of the refrigerant remains constant')
h2=h1 //final specific enthalpy 
P2=0.12 //final pressure in MPa
T2=-22.32 //final temp. in Celsius
hf=22.49 // in kJ/kg
hg=236.97 // in kJ/kg
hfg=hg-hf //in kJ/kg
disp('Obviously hf<h2<hg  thus, the refrigerant exists as a saturated mixture at the exit state')
disp('Thus quality at this state is')
x=(h2-hf)/hfg
dT=T2-T1 //in Celsius
printf("\n The quality of the refrigerant at the final state is = %.3f. \n",x);
printf("\n The temp. drop during this process is = %.2f C. \n",dT);