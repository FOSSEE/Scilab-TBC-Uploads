//Calculating the slip,rotor copper loss,the output horse power and efficiency
//Chapter 4
//Example 4.21
//page 316
clear;
clc; 
disp("Example 4.21")
f=50;...................//frequency of induction motor in hertz
P=6;....................//pole
Ns=(120*f)/P;
Nr=975;.........................//induction motor running speed in rpm
S=(Ns-Nr)/Ns;
printf("the slip=%f",S)
Pin=40;....................//power input to stator in kW
Sl=1;.....................//stator losses in kW
Rin=Pin-Sl;.................//output from stator in kW
Rc=S*Rin;
printf("\nrotor copper losses=%fkW",Rc)
l=2;.....................//total losses in kW
p=Rin-Rc-l;..................//output power in kw
HP=(p*1000)/735.5;
printf("\noutput horse output=%fHP",HP)
in=40;...........................//input in kW
effi=(p/in)*100;
printf("\nefficiency=%fpercent",effi)