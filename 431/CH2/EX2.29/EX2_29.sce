//Calculate the efficiency of machine when running as generator and motor
//Chapter 2
//Example 2.29
//page 145
clear;
clc; 
disp("Example 2.29")
I=440;......................//input at no-load in watt
V=220;........................//voltage in volts
Ic=I/V;......................//input current at no-load in amperes
i=1;....................//input current in amperes
A=2;.......................//current in amperes
C=A-i;.....................//armature current at no-load in amperes
L=I-((((C)^2)*0.5)+(V*C));.................//iron,friction and windage losses in watt
a=40;...................//motor current in amperes
OP=(V*a);
Ra=0.5;
Effi=(OP*100)/(OP+(((a+i)^2)*Ra)+(V*i)+L)
printf("Efficiency as a generator when delivering 40A at 220V=%fpercent",Effi)
Eff=((OP-(((a-i)^2)*Ra)-(V*C)-L)/OP)*100;
printf("\nEfficiency as a motor when taking 40A from at 220V=%fpercent",Eff)