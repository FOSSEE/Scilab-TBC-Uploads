//Ex:84
clc;
clear;
close;
x=3*10^(-4);//solid angle of antenna beam in sterad
G=(4*%pi)/x;//Power gain
g=10*log(G)/log(10);// power gain in db
u=0.90;//aperture efficiency
A=20;//crasection area
y=sqrt((u*4*%pi*%pi*A*A)/(4*G));//operational wavelength in m
c=3*10^8;//velocity of light in m/s
f=c/y;//operational frequency in Hz
printf("The antenna power gain=%f db",g);
printf("\n The operational frequency=%f MHz",f/1000000);