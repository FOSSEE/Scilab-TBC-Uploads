////Chapter No 14 Air Standard Cycles
////Example No 14.7 Page No  309
///Find Swept volume
//Input data
clc;
clear;
D=200*10^-3;                   //Otto cycle cylindrical bore in mm
L=450*10^-3;                   //Otto cycle Stroke in mm
vc=2*10^-3;                    //Clearance volume in mm^3
gamma1=1.4;
pi=3.142;

//Calculation
vs=(pi/4)*(D^2*L);             //Swept volume
r=((vs+vc)/vc);                 //Compression ratio
eta=100*(1-(1/(r**(gamma1-1)))); //Standard efficiency

//Output
printf('Swept volume= %f m^3 \n',vs);
printf('compression ratio= %f \n',r);
printf('standard efficiency= %f percent \n',eta);
