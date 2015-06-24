//3.12
clc;
R=10;
RL=R+R/2;
i1=450/15;
Irms_load=(1/(2*%pi)*(i1^2*2*%pi/3+(i1/2)^2*4*%pi/3))^0.5;
printf("RMS value of the load current = %.2f A", Irms_load)
Irms_thy= (1/(2*%pi)*(i1^2*%pi/3+(i1/2)^2*2*%pi/3))^0.5;
printf("\nRMS value thyristor current = %.0f A", Irms_thy)
