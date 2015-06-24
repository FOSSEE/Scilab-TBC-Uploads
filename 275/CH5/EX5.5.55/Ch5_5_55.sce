clc
disp("Example 5.55")
printf("\n")
disp("calculate the frequency of oscillation of Colpitts oscillator")
printf("Given\n")
//capacitor
C1=400*10^-12
C2=C1
//inductance
L=2*10^-3
//Total capacitance
C=C1*C2/(C1+C2)
//frequency of oscillation
f=1/(2*%pi*sqrt(L*C))
printf("frequency of oscillations \n%f hz\n",f)
