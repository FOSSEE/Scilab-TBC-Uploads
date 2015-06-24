//Example 2.20//unknown resistance ,capacitance 
clc;
clear;
f=2;//frequency in kHz
R1=2.8;//in killo ohms
C1=4.8;//in micro farads
R2=20;//in killo ohms
R4=80;//in killo ohms
R3=((R4/R2)*(R1*10^3+(1/((2*%pi*f*10^3)^2*(C1*10^-6)^2*R1*10^3))));//
C3=(1/((2*%pi*f*10^3)^2*C1*10^-6*R1*10^3*R3));//capaciatnce
disp(R3*10^-3,"unknown resistance in killo ohms")
disp(C3*10^12,"CAPACITANCE IN PICO FARAD IS")

