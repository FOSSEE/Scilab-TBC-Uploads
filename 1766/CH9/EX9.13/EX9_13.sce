clc;funcprot(0);//Example 9.13
//Initilisation of Variables
T1=600;....//Temparature of large plate 1 in K
T2=300;....//Temparature of large plate 2 in K
e=0.8;....//Emissivity of all surfaces 
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
Q12a=(R*(T1^4-T2^4))/((2/e)-1);.....//Net heat flux in W/m^2
disp(Q12a,"Net heat flux in W/m^2:")
