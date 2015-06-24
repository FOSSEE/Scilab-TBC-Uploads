//3.11
clc;
R=10;
RL=R+R/2;
i1=400/15;
i2=i1;
i3=i1;
Irms_load=(1/(2*%pi)*(i1^2*2*%pi/3+(i1/2)^2*4*%pi/3))^0.5;
printf("RMS value of the load current = %.3f A", Irms_load)
Po=i1^2*R*3;
printf("\nOutput power = %.2f W", Po)
Iavg_thy=1/(2*%pi)*(i1*%pi/3+(i1/2*2*%pi/3));
printf("\nAverage thyristor current = %.2f A", Iavg_thy)
Irms_thy= (1/(2*%pi)*(i1^2*%pi/3+(i1/2)^2*2*%pi/3))^0.5;
printf("\nRMS value thyristor current = %.2f A", Irms_thy)
