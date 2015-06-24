clc
//Example 11.1
//Calculate the powerr absorbed by capacitor and resistor
printf("Given")
disp('Capacitor 5uF, Resistor 200 ohm, Voltage source is 40+60*u(t)')
C=5*10^-6;R=200;
//For t<0 the value of u(t) is zero hence at t=0- the value of voltage is 40V
//For t=0+ the voltage is 100V 
//At t=0+ the capacitor cannot charge instantaneously hence resistor voltage is 60V
disp('For t=0+')
VR=60;
i0=VR/R
T=R*C
t=1.2*10^-3
disp('The value of current is i(t)=i0*exp(-t/T)')
ival=i0*exp(-t/T)
printf("Value of resistor current at 1.2ms=%3.2f mA \n",ival*10^3)
//Let PR be the power absorbed by the resistor
PR=ival^2*R
printf("Value of resistive power at 1.2ms=%3.2f W \n",PR)
//Out of the 100V available at t>0 the voltage across the capacitor is
disp('vC(t)=100-60*exp(-t/T)')
vCval=100-60*exp(-t/T)
printf("Value of capacitor voltage at 1.2ms=%3.2f V \n",vCval)
//Let PC be the power absorbed by the capacitor
PC=ival*vCval
printf("Value of capacitive power at 1.2ms=%3.2f W \n",PC)