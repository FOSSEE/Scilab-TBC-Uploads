// exa 1.6 Pg 15
clc;clear;close;
Pmax=75;// kW
Pmin=7.5;// kW
z=5;// no. of models

//Rn=Pmax/Pmin=fi**(z-1)
fi=(Pmax/Pmin)**(1/(z-1));// common ratio

printf('The models are:')

for i=0:z-1
    P1=fi**(i)*Pmin;// kW
    printf('\n\t\t\tP%d = %.1f kW',i,P1)
end;
