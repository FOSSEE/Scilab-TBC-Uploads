// exa 1.4 Pg 15
clc;clear;close;
Pmax=50;// kW
Pmin=5;// kW
z=4;// no. of models

//Rn=Pmax/Pmin=fi**(z-1)
fi=(Pmax/Pmin)**(1/(z-1));// common ratio

printf('The models are:')

for i=0:z-1
    P1=fi**(i)*Pmin;// kW
    printf('\n\t\t\tP%d = %.1f kW',i,P1)
end;

printf('\n for 8 models.')

z=8;// no. of models

//Rn=Pmax/Pmin=fi**(z-1)
fi=(Pmax/Pmin)**(1/(z-1));// common ratio

printf('The models are:')

for i=0:z-1
    P1=fi**(i)*Pmin;// kW
    printf('\n\t\t\tP%d = %.1f kW',i,P1)
end;
