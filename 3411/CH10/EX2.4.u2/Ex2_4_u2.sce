//Example 2_4_u2
clc();
clear;
//To calculate the current density in each wire and drift speed of electrons 
dcu=1.8*10^-3     //units in mts
dAl=2.5*10^-3     //units in mts
Acu=(%pi*dcu^2)/4      //units in met^2
AAl=(%pi*dAl^2)/4      //units in met^2
ia=1.3    //units in amperes
jcu=ia/Acu           //units in A/met^2
jAl=ia/AAl           //units in A/met^2
printf("Current density in Copper is jcu=%.2f A/met^2\n",jcu)
printf("Current density in Aluminium is jal=%.2f A/met^2\n",jAl)
d1=8.49*10^28     //units in met^-3
d2=18*10^28     //units in met^-3
e=1.6*10^-19
vdcu=jcu/(d1*e)     //units in met/sec
vdal=jAl/(d2*e)     //units in met/sec
printf("Drift speed of electrons in copper vdcu=%.6f met/sec\n",vdcu)
printf("Drift speed of electrons in Aluminium vdal=%.6f met/sec\n",vdal)
