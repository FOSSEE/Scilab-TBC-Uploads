// Example 7.26:design wein bridge oscillator
clc;
clear;
close;
Vcc=15;//collector voltage
f=10;//frequency of oscillation in killo hertz
Vo=Vcc-1;//maximum output voltage
I=1;//current in millo ampere
x=Vo/I;//resistance in killo ohms
R4=x/3;//resistance in killo ohms
R3= 2*R4;//resistance in killo ohms
A= round(1+(R3/R4));//amplifier gain
R=R4;//resistance in killo ohms
C=(1/(2*%pi*f*10^3*R*10^3))*10^9;//CAPACITANCE IN NANO FARAD
disp(A,"amlifier gain is")
disp(R,"resistance in killo ohms")
disp(R3,"resistance in killo ohms")
disp(C,"CAPACITANCE IN NANO FARAD")
disp("this is name as example 7.27 in the book" )
