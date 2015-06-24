
//To time taken and the number of revolutions made before the motor is stopped
//Page 223
clc;
clear;
P=50*735.5; //Power Rating
V=400; //Rated Voltage
N=750; //Rated Speed
w=N*%pi*2/60; //Angular Frequency
I=20; //Moment Inertia
pf=0.95; //Full Load power factor
eff=90/100; //Overall Efficiency
Rb=2; //Braking Resistor

Tm=P/w; //Full Load Torque
Ifl=P/(sqrt(3)*V*eff*pf); //Full Load Current
Ilb=V/(sqrt(3)*Rb); //The Line Current at the start of braking
Te=Tm*Ilb/Ifl; //Torque for electric braking

Tb=Te+Tm; //Total Braking torque

K=Te/w; //Motor constant
B=Tb/I; //Retardation

ts=integrate('I/(Tm+(K*x))','x',0,w); //Time Taken for the motor to stop

NoR=(1/(2*%pi*K))*integrate('((Tm+(K*w))*exp(-1*K*t/I))-Tm','t',0,ts); //Number of Revolutions

//Note The Value of time in the textbook is wrong, Calculation error

printf('The Time Taken for the Motor to stop is %g seconds\n',ts)
printf('The Number of revolutions undergone before it stops is %g revolutions which is approx %g revolutions\n',NoR,round(NoR))
