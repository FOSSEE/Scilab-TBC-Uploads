////Chapter No 14 Air Standard Cycles
////Example No 14.4 Page No 304 
///Find Heat supplied process
//input data 
clc;
clear;
T2=377+273;                  //Carnot cycle temperature in bar      
P2=20*10^5;                 //Carnot cycle pressure in bar
V2=1;
V1=5;
V3=2;
//Consider air as the working fluid therefore
R=0.287;                     //In KJ/Kg K
Cp=1.005;                    //In KJ/Kg K
Cv=0.718;                    //In KJ/Kg K
K=1.4;
gamma1=1.4;

//Calculation
T1=T2*((V2/V1)^(gamma1-1));                //Minimum temp in degree celsius
Qs=R*T2*log(V3/V2);                     //Heat supplied process in KJ/Kg
QR=R*T1*log((V1/V2)*(V2/V3)*((T2/T1)^(1/(gamma1-1)))); //Heat Rejected Process in KJ/Kg
etath=(1-(T1/T2))*100;                           //Thermal Effeiciency of the carnot cycle in %



//Output
printf('Minimum temp= %f degree celsius \n',T1);
printf('Heat supplied process= %f KJ/Kg \n',Qs);
printf('Heat Rejected Process=  %f KJ/Kg \n',QR);
printf('Thermal Effeiciency of the carnot cycle=%f percent \n',etath);
