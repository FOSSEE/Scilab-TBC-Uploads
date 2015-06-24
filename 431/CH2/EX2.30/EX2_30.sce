//Calculating the efficiency of the generator at full load and at half load
//Chapter 2
//Example 2.30
//page 147
clear;
clc;
disp("Example 2.30")
V=400;.............................//motor in volts
Rf=200;............................//field resistance in ohms
If=V/Rf;...........................//current in amperes
i=5;......... .....................//current at no load in amperes
IP=V*i;....  ......................//motor input at no load
Ia=3;..... ........................//aramture current in amperes
Ra=0.5;.... .......................//armature resistance in ohms
L=IP-(((Ia)^2)*Ra)-(V*If);.....................//iron,friction and windage in losses in watt
printf("iron,friction and windage in losses=%fW",L)
At=50;.......................                ..//armature total current in amperes
A=At-2;..........                           ...//armature current in amperes
Ls=(((A)^2)*Ra)+(V*If)+L;..............        //Losses
Eff=(((V*At)-Ls)/(V*At))*100;
printf("\nEfficiency of full load=%fpercent",Eff)
//flux is constant
E1=V-(Ia*Ra);...................         //induced emf in the armature at no load
E2=V-(A*Ra);............................ //induced emf in the armature at full load
// since N1/N2=E1/E2
percentload=(1-(E2/E1))*100;
printf("\nPercentage change in speed from no load to full load=%fpercent",percentload)


 