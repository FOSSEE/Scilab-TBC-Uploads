//Exa 2.32
clc;
clear;
close;
format('v',6);

//Given Data : 
p1=5;//bar
p2=50;//bar
V=0.001;//m^3/Kg
m_dot=10;//Kg/s
wsf=integrate('-V',"p",p1*10^5,p2*10^5);//J/kg
wsf=wsf/1000;//KJ/Kg
Wsf=abs(wsf)*m_dot;//KW(leaving -ve sign as it is to indiacte heat is supplied)
disp(Wsf,"Power required in KW : ");
