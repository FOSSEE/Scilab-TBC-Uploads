//Exa 2.43
clc;
clear;
close;
format('v',8);

//Given Data : 
h1=160;//KJ/Kg
h2=2380;//KJ/Kg
m1dot=10;//Kg/s
m2dot=0.8;//Kg/s
Qdot=10;//KJ/s
Wdot=0;//KJ
deltaKE=0;
deltaPE=0;
m3dot=m1dot+m2dot;//Kg/s
disp(m3dot,"Mass flow of heated water in Kg/s : ");
//m1dot*h1+m2dot*h2=m3dot*h3+Qdot
h3=(m1dot*h1+m2dot*h2-Qdot)/m3dot;//KJ/Kg
disp(h3,"Specific enthalpy of heated water in KJ/Kg : ");
