// exa 1.2 Pg 14
clc;clear;close;
Pmax=100;// kW
Pmin=10;// kW
z=5;// no. of models

//Rn=Pmax/Pmin=fi**(z-1)
fi=(Pmax/Pmin)**(1/(z-1));// common ratio

printf('The power of generating sets are:')
P1=Pmin;// kW
for i=1:z
    printf('\n\t\t\tP%d = %.1f kW',i,P1)
    P1=fi*P1;//kW
end;

printf('\nExpanding for 10 models.');
z=10;// no. of models

fi=(Pmax/Pmin)**(1/(z-1));// common ratio

printf('\nThe power of generating sets are:')
P1=Pmin;// kW
for i=1:z
    printf('\n\t\t\tP%d = %.1f kW',i,P1)
    P1=fi*P1;//kW
end;   
   
   
