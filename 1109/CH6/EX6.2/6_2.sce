clear;
clc;
Zo=75;s=3;d=1/5;
B=2*%pi*d; //B=b*ymax where ymax=position of the current maxima which is 1/5th                   wavelength away from the load(here)
phi=2*B;
ampK=(s-1)/(s+1); //ampK=amplitude of the reflection coefficient
K=ampK*(exp(%i*phi));
ZR=round(((Zo*(1+K))*100)/100)/(round((1-K)*1000)/1000);
C=real(ZR);
D=imag(ZR);
printf("Load impedance = %f /_ %f ohms",round(abs(ZR)*10)/10,round(atan(imag(ZR),real(ZR))*180*100/%pi)/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
