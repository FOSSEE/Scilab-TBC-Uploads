clc
clear

//Inputs
m=1;        //Mass in kg
P1=7;        //Pressure in bar
T1=90+273;  //Temperature in K
P2=1.4;
R=0.287;
G=1.4;      //Gamma for air
//Calculations according to data required
x=P2/P1;
y=0.1/1.1;
z=x^y;
T2=T1*z;        //calculating T2
printf('Final Temperature is: %3.1f K',T2);
printf('\n');
W=(m*R*(T1-T2))/(1.1-1);
printf('Work Done is: %3.1f kJ',W);
printf('\n');
Cv=(R)/(G-1);
Cp=R+Cv;
CI=m*Cv*(T2-T1);
printf('Change in Internal Energy is: %3.2f kJ',CI);
printf('\n');
Q=CI+W;
printf('Heat Transfer is: %3.2f kJ',Q);
printf('\n');
