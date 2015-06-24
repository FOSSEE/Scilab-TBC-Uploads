clc;
f=50 //Frequence in hertz
Irms=20 //Rms current in amperes
Im=Irms*sqrt(2)
disp("(i)")
printf("\n Im=%02f A \n",Im)
t=0.0025 //Time in seconds
i=Im*sin(2*%pi*f*t)
disp("(ii)")
printf("\n i=%.0f \n",i)
t=0.0125
i=Im*sin(2*%pi*f*t)
disp("(iii)")
printf("\n i=%.0f \n",i)
i1=14.14/Im
disp(i1)
i2=asin(i1)
i2=i2*180/%pi
disp(i2)
i=i2/(2*180*f)
printf("\n i=%.2f \n ms",i*10^3)

