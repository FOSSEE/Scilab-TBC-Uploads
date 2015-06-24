//chapter 2
//example 2.1
//page 33
clear all;
clc ;
//given
Rl=100;//load resistor in ohm
Es=5;//supply voltage in volts
//for point A
If1=0;//forward current through diode ,thus drop across resistor is 0 v
Ef1=5; //Ef=voltage drop across diode in volts

//for point B
Ef2=0;
If2=Es/Rl; //in Ampere
If2=If2*10^3;//in mA

plot([Ef1 Ef2],[If1 If2],'-.*')
xtitle('dc load line','voltage drop across diode(V)','current through diode(mA)')
a=gca();
a.data_bounds=[-0.5 -0.5;5.1 52]
printf('dc load line passes through points A(5,0),B(0,50)')
