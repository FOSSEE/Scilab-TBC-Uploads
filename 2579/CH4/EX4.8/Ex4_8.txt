//Ex:4.8
clc;
clear;
close;
Vc=3*10^8;// the speed of light in m/cm
f=100*10^6;// frequency in Hz
y=Vc/f;// wavelength in cm
de=(y/2)+(y/2)*(5/100);// driven element length in m
l1=(y/2)-(y/2)*(5/100);// first director length in m
l2=l1-(l1*5/100);// second director length in m
l3=l2-(l2*5/100);// third director length in m
l_s=0.2*y*4;// support boom length in m
L_s=l_s*3.28;// support boom length in ft.
printf("The first director length = %f meter", l1);
printf("\n The second director length = %f meter", l2);
printf("\n The third director length = %f meter", l3);
printf("\n The support boom length in m = %f meter", l_s);
printf("\n The support boom length in ft. = %d ft.", L_s)