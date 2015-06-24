//Ex:4.2
clc;
clear;
close;
c=3*10^8;// the speed of light in m/s
f=100*10^6;// frequency in Hz
y=c/f;// wavelength in m
de=y/2;// drive element in m
Rf=de+(de*5/100);// reflector in m
Df=de-(de*5/100);// director in m
sp=0.2*y;// spacing between the elements in m
printf("The wavelength = %d meter", y);
printf("\n The drive element = %f meter", de);
printf("\n The reflector = %f meter", Rf);
printf("\n The director = %f meter", Df);
printf("\n The spacing between the elements = %f meter", sp);