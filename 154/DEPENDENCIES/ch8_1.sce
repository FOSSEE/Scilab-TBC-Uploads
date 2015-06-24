clc
disp("Example 8.1")
printf("\n")

printf("Given")
disp("Capacitance is 1uF")
disp("Resistance is 1Mohm")
disp("Voltage across capacitor is 10V")
R=1*10^6;C=1*10^-6;V=10
//Let T be time constant
T=R*C
//v(t)=V*exp(-t/T)
disp("v(t)=10*exp(-t)      (1)")
//Substituting value of t=5 in (1)
v5=10*exp(-5)
printf("Time constant is %ds\n",T)
printf("v(5)=%0.3fV\n",v5)