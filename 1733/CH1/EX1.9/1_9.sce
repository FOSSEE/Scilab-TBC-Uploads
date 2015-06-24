//1.9
clc;
I=120;
gama=180;
th=360;
I_rms=I*(gama/th)^0.5;
printf("The RMS value of current= %.2f A",I_rms)
I_avg=I*(gama/th);
Form_factor=I_rms/I_avg;
printf("\nForm factor= %.3f A",Form_factor)