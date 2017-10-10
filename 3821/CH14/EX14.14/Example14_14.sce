////Chapter No 14 Air Standard Cycles
////Example No 14.14 Page No 317
///Find air standard efficiency
//Input data
clc;
clear;
T1=50+273;          //Temperature at the beginning of the compression
T2=700+273;         //Temperature at the end of the compression
T3=2000+273;        //Temperature at the beginning of the expansion
gamma1=1.4;

//Calculation
r=((T2/T1)^(1/(gamma1-1))); //Compression ratio 
rho=(T3/T2);                //Cut-off ratio
K=((rho-1)/(r-1));          //Also cut-off ratio
//Air standard efficiency
eta=(1-(1/r^(gamma1-1))*((1/gamma1)*(((rho^(gamma1))-1)/(rho-1))))*100;

//Output
printf('compression ratio= %f \n',r);
printf('cut-off ratio= %f \n',rho);
printf('also cut-off ratio= %f \n',K);
printf('air standard efficiency= %f percent',eta);
