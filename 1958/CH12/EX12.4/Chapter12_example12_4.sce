clc
clear
//Input data
C=10*10^-6//Capicitance in F
R=10*10^3//Resistance in ohms
e=6//Emf of the battery in V

//Calculations
t=C*R//Time constant in s
Qm=(C*e)/10^-6//Maximum charge in micro C
Im=(e/R)*1000//Maximum current in mA

//Output
printf('Time constant of the circuit is %3.1f s \n Maximum charge on the capacitor is %i micro C \n Maximum current in the circuit is %3.1f mA \n Charge at time t is Q(t) = %i(1-exp(-t/%3.1f)) micro C \n Currrent at time t is I(t) = %3.1f exp(-t/%3.1f) mA',t,Qm,Im,Qm,t,Im,t)
