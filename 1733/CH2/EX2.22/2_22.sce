//2.22
clc;
Vm=230*2^0.5;
Vdc=2*Vm/%pi*cosd(30);
R=Vdc/4;
printf("dc value of voltage = %.1f V", Vdc)
IL=4;
I=2*2^0.5/%pi*IL;
P_input_active=230*I*cosd(30);
printf("\n Active input power= %.2f W", P_input_active)
P_input_reactive=230*I*sind(30);
printf("\n reactive input power= %.2f Vars", P_input_reactive)
P_input_appearent=230*I;
printf("\n Active input power= %.2f VA", P_input_appearent)

disp('When freewheeling diode is present')
Vm=230*2^0.5;
Vdc=Vm/%pi*(1+cosd(30));
printf("dc value of voltage = %.1f V", Vdc)
IL=Vdc/R;
I=2*2^0.5/%pi*IL*cosd(15);
P_input_active=230*I*cosd(15);
printf("\n Active input power= %.2f W", P_input_active)
P_input_reactive=230*I*sind(15);
printf("\n reactive input power= %.2f Vars", P_input_reactive)
P_input_appearent=230*I;
printf("\n Active input power= %.2f VA", P_input_appearent)
disp('When Th3 get open circuit')
Vdc=230/(2^0.5*%pi)*(1+cosd(30));
printf("dc value of voltage = %.3f V", Vdc)
Idc=Vdc/R;
printf("\nAverage dc output current = %.2f A", Idc)



