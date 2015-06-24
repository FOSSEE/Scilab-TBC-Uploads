//Calculate harmonic distortion and percentage increase in output voltage due to this
clear;
clc;
//soltion
//given

I1=60;//A
I2=6;//A
I3=1.2;//A
I4=0.6;//A
D2=I2/I1;
D3=I3/I1;
D4=I4/I1;
printf("The Harmonic distortion of each component\nD2= %.0f percent\nD3= %.0f percent\nD4= %.0f percent\n",D2*100,D3*100,D4*100);

D=sqrt((D2)^2+(D3)^2+(D4)^2);
printf("The Total Harmonic distortion = %.0f percent\n",D*100);
P=(1+D^2);//Total power increase

//percent increase= (Pi*(1+D^2)-Pi)*100/Pi;
//taking out and cancelling Pi
PI=(P-1)*100;
printf("The percentage increase in output power= %.0f percent",PI);
