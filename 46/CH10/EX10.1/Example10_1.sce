//Example 10.1
clear
clc
t1=60;//Fahrenheit
t2=100;//Fahrenheit
p1=3;//psi
p2=15;//psi
T1=71;//Fahrenheit
T2=75;//Fahrenheit
pb=((T2-T1)/(t2-t1))*100;
disp('%',pb,'proportional band=')
Gain=(p2-p1)/(T2-T1);
disp('psi/F',Gain,'Gain=')
//Assume pb is changed to 75% then
pb=75;//%
T=(pb*(t2-t1))/100;
disp('Fahrenheit',T,'T=')
Gain=(p2-p1)/T;
disp('psi/F',Gain,'Gain=')
