//2.3
clc;
Vp_sec=230*2^0.5/4;
alph=asind(12/Vp_sec);
alph1=180-alph;
//the diode will conduct from 8.89 degree to 171.51degree
Angle_conduction=alph1-alph;
printf("Conduction Angle = %.2f degree", Angle_conduction)
Idc=4;
R=1/(2*Idc*%pi)*(2*Vp_sec*cosd(alph)+(2*12*alph*%pi/180)-12*%pi);
printf("\nResistance = %.2f ohm", R)
Irms=((1/(2*%pi*R^2))*(((Vp_sec^2/2+12^2)*(%pi-2*alph*%pi/180))+(Vp_sec^2/2*sind(2*alph))-(4*Vp_sec*12*cosd(alph))))^0.5;
P_rating=Irms^2*R;
printf("\nPower rating of resistor = %.2f W", P_rating)
Pdc=12*Idc;
t_charging=150/Pdc;
printf("\nCharging time = %.3f h", t_charging)
Rectifier_efficiency= Pdc/(Pdc+Irms^2*R);
printf("\nRectifier efficiency = %.2f ", Rectifier_efficiency)
PIV=Vp_sec+12;
printf("\nPIV = %.3f V",PIV)