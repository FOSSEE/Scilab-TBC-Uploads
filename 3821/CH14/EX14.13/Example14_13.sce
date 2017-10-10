////Chapter No 14 Air Standard Cycles
////Example No 14.13 Page No 317
///Find Compression ratio
//Input data
clc;
clear;
Vc=10/100;              //Clearance volume in %          
Vs=Vc/0.1;              
K=0.05;                 //Cut-off of the strok in 
gamma1=1.4;

//Calculation
r=((Vs+Vc)/(Vc));       //Compression ratio
rho=1+K*(r-1);          //Cut-off ratio
//Effeciency in %
eta=(1-(1/r^(gamma1-1))*((1/gamma1)*(((rho^(gamma1))-1)/(rho-1))))*100;

//Output
printf('Compression ratio= %f Vs \n',r);
printf('Cut-off ratio= %f \n',rho);
printf('Effeciency= %f \n',eta);
