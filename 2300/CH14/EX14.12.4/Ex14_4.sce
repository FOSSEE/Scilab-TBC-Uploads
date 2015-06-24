//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
R1=1*1000//R1=input resistance in ohms in the inverting terminal of the amplifier circuit
R2=200//R2=input resistance in ohms in the inverting terminal of the amplifier circuit
R3=400//R3=input resistance in ohms in the inverting terminal of the amplifier circuit
Rf=500//Rf=feedback resistance in ohms
v1=-5//v1=input voltage in the inverting terminal of an amplifier circuit at R1 resistor
v2=3//v2=input voltage in the inverting terminal of an amplifier circuit at R2 resistor
v3=4//v3=input voltage in the inverting terminal of an amplifier circuit at R3 resistor
vo=-(((Rf/R1)*v1)+((Rf/R2)*v2)+((Rf/R3)*v3))//vo=output voltage for inverting summing summing amplifier circuit
disp("V",vo,"Output voltage of the 3-input summing amplifier circuit is =")
disp("Output voltage is negative as it the circuit of inverting summing amplifier")

