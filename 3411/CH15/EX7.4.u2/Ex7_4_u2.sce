//Example 7_4_u2
clc();
clear;
//To find the charge in the minority carrier concentration
ni=9.65*10^9       //units in cm^-3
nno=10^14     //units in cm^-3
//Before illumination
pno=ni^2/nno      //units in cm^-3
//After illumination
tp=2          //units in us
tp=tp*10^-6        //units in sec
gl=(10^13/10^-6)          //units in No of electron hole pair for cm^-3
pn=pno+(tp*gl)        //units in cm^-3
printf("Change in the minority carrier concentration is Pn=")
disp(pn)
printf("cm^-3")
