// Amplitude Modulation-Transmission : example 2-9 : pg(100)
a=1;
b=0.03;
c=0.05;
d=0.02;
e=0.04;
x=sqrt((b^2+c^2+d^2+e^2)/a^2);
y=x*100;
printf("\nTHD = sqrt((V2^2)+(V3^3)+(V4^2)+(V5^2)/(V1^2)) \nTHD = %.5f",x);
printf("\nTHD = %.2f percent",y);//total harmonic distortion