////Chapter No 14 Air Standard Cycles
////Example No 14.16 Page No 317
///Find constant pressure
//Input data
clc;
clear;
r=14;               //compression ratio of standard diesel cycle
P1=1;               //compression stroke in bar
T1=300;             //temperature of air in k
T3=2774;            //temperature rises in k
CP=1.005;
v1=14;
v2=1;
gamma1=1.4;
Qs=1921.43;
R=0.287*10^3;


//Calculation
T2=T1*((v1/v2)^(gamma1-1));      //Constant pressure
rho=T3/T2;                       //cut-off ratio
eta=(1-(1/r^(gamma1-1))*((1/gamma1)*(((rho^(gamma1))-1)/(rho-1))))*100; //air standard efficiency
HS=(CP*(T3-T2));                 //heat supplied
WD=(Qs*eta)*10^-2;                //Net work done
v1=(R*T1/P1)*10^-5;               //characteristics gas equation
v2=(v1/r );                       //characteristics gas equation
Sv=(v1-v2);                       //Swept volume
Pme=(WD/Sv )*10^-2;               //Mean effective pressur
Pm=((P1*r)/((r-1)*(gamma1-1)))*((gamma1*(r^(gamma1-1)))*(rho-1)-((rho^(gamma1))-1));  // mean effective pressure 


//utput
printf('constant pressure= %f K \n',T2);
printf('cut-off ratio= %f \n ',rho);
printf('air standard efficiency= %f percent \n',eta);
printf('heat supplied=  %f KJ/Kg \n',HS);
printf('Net work done= %f KJ/Kg \n',WD);
printf('characteristics gas equation= %f m^3/Kg \n',v1);
printf('characteristics gas equation=%f m^3/Kg \n ',v2);
printf('Swept volume=%f m^3/Kg \n ',Sv);
printf('Mean effective pressure=  %f bar \n',Pme);
printf('Mean effective pressure= %f bar \n ',Pm);
