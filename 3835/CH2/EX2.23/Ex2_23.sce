clear
//
//thevenin's theorem and superposition theorem used here
//applying mesh eqns to the 2 circuits and after getting the eqns they are solved using cramer's rule to obtain i1 and i2
i1=-0.6
i2=-1.2
//the value of currents indicates that they have assumed to be flowing in directions opposite to the assumed direction
vth=12-1.2*3 //voltage eqn
rth=1.425 //(1+2||12)||3=(1+(2*12)/(2+12))||3=19/7||3=19/7*3/19/7+3=1.425
i2=vth/(rth+2)
printf("\n current through 2 ohm resistor is= %0.1f  A",i2)
printf("\n Note that the same problem is again solved using superposition theorem and hence ignored ")
