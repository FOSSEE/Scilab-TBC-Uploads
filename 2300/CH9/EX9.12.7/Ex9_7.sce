//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
//In a single tuned amplifier
L=120*10^-6//L=inductance in henry
C=100*10^-12//C=capacitance in farad
R=10//R=resistance in ohms
hoe=50*10^-6//hoe=output impedance in mho(or S)
hfe=100//hfe=current gain
hie=2.5*10^3//hie=input impedance in ohm
RT=10*10^3//RT=equivalent resistance of RB and Ri in parallel
fo=1/(2*%pi*sqrt(L*C))//fo=resonant frequency
format("v",5)
disp("MHz",fo/10^6,"The resonant frequency is =")//fo is converted in terms of MHz
Qo=(1/R)*sqrt(L/C)//Qo=Q-factor of the resonant frequency
Ro=(Qo^2)*R//Ro=maximum impedance Zm
Rp=1/(hoe+(1/Ro)+(1/RT))//Rp=equivalent resistance of the parallel combination of Ro,ro and RT
Qe=(Qo*Rp)/Ro//Qe=effective Q-factor
B=fo/Qe//B=bandwidth
format("v",6)
disp("kHz",B/10^3,"The bandwidth is =")//B is converted in terms of kHz
AVm=-(hfe*Rp)/hie//AVm=maximum voltage gain
format("v",6)
disp(AVm,"The maximum voltage gain is =")
