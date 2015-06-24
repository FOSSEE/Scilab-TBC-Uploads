clc
clear
//Input data
x=0.3;//Thickness of the wall in degree centigrade
t1=24;//Inside surface temperature of the wall in degree centigrade
t2=-6;//Outside temperature of wall in degree centigrade
h=2.75;//Height of the wall in m
L=6.1;//Length of the wall in m
K=2.6;//Coefficient of conductivity of brick in kJ/hr m C

//Calculations 
A=h*L;//Area of the wall in m^2
T=t2-t1;//Temperature difference in degree centigrade
q=(K*A*(-T))/(x);//Heat transfer by conduction in kJ/hr
R=(t1-t2)/q;//Resistance of the wall in C hr/kJ
C=1/R;//Conductance of the wall in kJ/m C

//Output
printf('(a)The heat transfer by conduction through the wall q = %3.2f kJ/hr \n (b)Resistance of the wall R = %3.5f C hr/kJ \n Conductance of the wall C= %3.2f kJ/m C',q,R,C)
