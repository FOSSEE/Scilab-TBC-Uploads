//Example 7_4_u2
clc();
clear;
//To find the charge in the minority carrier concentration
ni=9.65*10^9
nno=10^14
//Before illumination
pno=ni^2/nno      //units in cm^-3
//After illumination
tp=2*10^-6
gl=(10^13/10^-6)
pn=pno+(tp*gl)        //units in cm^-3
printf("Change in the minority carrier concentration is Pn=")
disp(pn)
printf("cm^-3")
