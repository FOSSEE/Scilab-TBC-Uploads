//scilab 5.4.1
//Windows 7 operating system
//chapter 11 Sinusoidal oscillator and multivibrators
clc
clear
L=50*10^-3//L=primary inductance of a transformer in henry
C=(200*10^-12)//C=capacitor connected across transformer in farad
R=50//dc resistance of primary coil in ohm
hie=2000//hie=input impedance in ohm
hre=10^(-4)//hre=reverse voltage amplification factor
hfe=98//hfe=current gain
hoe=(0.5*10^(-4))//hoe=output impedance in mho
RB=50000//RB=resistance
f=1/(2*%pi*sqrt(L*C))//f=frequency of oscillation
format("v",5)
g=((hie*hoe)-(hfe*hre))//g=dhe=delta he
//M=mutual inductance in henry between the transformer primary and the secondary coils for sustained oscillations
M=((RB/hfe)*((C*R)+(hoe*L)))+((C*R*hie)/hfe)+((L*g)/hfe)
format("v",5)
disp("kHz",f/10^3,"Frequency of oscillation is =")//f is converted in terms of kHz
disp("mH",M/10^-3,"Mutual inductance is =")//M is converted in terms of mH
