//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear; 


v1=220;v2=110;   //voltages of primary and secondary windings res.
Q=10;            //reactive power at KVA
R1=.25;R2=.06;   //voltages of primary and secondary windings res.

a=v1/v2;
I1=(Q*10^3)/v1;
I2=a*I1;
L1=(I1^2)*R1;
L2=(I2^2)*R2;
T=L1+L2;  //total I^2*R loss

R21=(a^2)*R2;
Rp=R1+(a^2)*R2;
L=(I1^2)*Rp;   //loss due to resistance referred to primary

printf('total I^2*R loss %f\n',T);
printf('loss due to resistance referred to primary is %f\n',L)
printf('Hence proved')
