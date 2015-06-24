// Example 7.28:design wein bridge oscillator
clc;
clear;
close;
Vcc=10;//collector voltage
f=10;//frequency of oscillation in killo hertz
Vo=Vcc-1;//maximum output voltage
I=500;//current in micro ampere
x=(Vo/I)*10^3;//resistance in killo ohms
R4=x/3;//resistance in killo ohms
R3= 2*R4;//resistance in killo ohms
R=R4;//resistance in killo ohms
C=(1/(2*%pi*f*10^3*R*10^3))*10^12;//CAPACITANCE IN pico FARAD
disp(R,"resistance in killo ohms")
disp(R3,"resistance in killo ohms")
disp(C,"CAPACITANCE IN NANO FARAD")
