clc
clear
//Input data
P1=1;//Initial pressure of a multistage compression in bar
Pn1=120;//Final pressure in bar
r=4;//Permissible pressure ratios per stage

//Calculations
n=log(Pn1/P1)/log(r)
n1=4;//As n=3.45 say 4 stages
P5=Pn1;//Since number of stages is 4
P4=P5/(Pn1/P1)^(1/n1);//Pressure after the stage 3 in bar
P3=P4/(Pn1/P1)^(1/n1);//Pressure after the stage 2 in bar
P2=P3/(Pn1/P1)^(1/n1);//Pressure after the stage 1 in bar

//Output
printf('(a)Number of stages are %3.0f\n (b)Intermediate pressures are, P2 = %3.2f bar, P3 = %3.2f bar, P4 = %3.2f bar',n1,P2,P3,P4)
