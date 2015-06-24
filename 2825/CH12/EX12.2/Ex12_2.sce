//Ex12_2 Pg-588
clc

RL=3.3*10^(3) //load resistor in ohm
R=5.6*10^(3) //resistor R in ohm
C=0.001*10^(-6) //capacitance in farad

disp("For oscillations to be maintained in a RC oscillator, ")
hfe=(23+(29*R/RL)+(4*RL/R)) //transistor current gain
printf("                    = %.f \n",hfe)

disp("Frequency of oscillations,")
f=1/(2*%pi*C*sqrt((4*R*RL)+(6*R^2))) 
//frequency of oscillation (textbook answer is wrong
// because of the used of wrong value of C)
printf("            = %.1f Hz",f)
