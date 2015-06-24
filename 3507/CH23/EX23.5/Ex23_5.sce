//chapter23
//example23.5
//page515

Vm=400 // V
v=150 // V
R_L=200 // ohm

// since v=Vm*sin(theta), we get

theta=asin(v/Vm)*180/%pi // in terms of degrees

V_av=Vm*(1+cos(theta*%pi/180))/(2*%pi)
I_av=V_av/R_L
P=V_av*I_av

printf("firing angle = %.2f degrees \n",theta)
printf("average output voltage = %.3f V \n",V_av)
printf("average current for load of 200 ohm = %.3f A \n",I_av)
printf("power output = %.3f W \n",P)

// the accurate answer for power output is 75.250 W but in book it is given as 75.15 W
