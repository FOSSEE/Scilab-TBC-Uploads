//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear; 

v1=220;v2=110;   //voltages of primary and secondary windings res.
Q=10;            //reactive power at KVA
R1=.25;R2=.06;   //voltages of primary and secondary windings res.

a=v1/v2;
I1=(Q*10^3)/v1;
I2=a*I1;
R21=(a^2)*R2;
Rp=R1+(a^2)*R2;
R12=R1/(a^2);
Rs=R1/(a^2)+R2;

printf('the turns ratio is %d\n',a);
printf('total resistance reffered to primary is %f ohms\n',Rp);
printf('total resistance referred to secondary is %f ohms',Rs)
