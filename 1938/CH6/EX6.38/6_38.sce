clc,clear
printf('Example 6.38\n\n')

Z1=complex(0.2,2)
Z2=Z1
ZL=complex(3,4)
Z=ZL
E1=complex(2000,0)
E2=complex(2200,100)

I1=((E1-E2)*Z+E1*Z2)/(Z*(Z1+Z2)+Z1*Z2)
I2=((E2-E1)*Z+E2*Z1)/(Z*(Z1+Z2)+Z1*Z2)

IL=I1+I2
V=IL*Z //Terminal voltage

phi1=phasemag(V)-phasemag(I1)  //Phasemag returns the angle of complex number in degrees
phi2=phasemag(V)-phasemag(I2)  //Phasemag returns the angle of complex number in degrees

Pout1=sqrt(3)*sqrt(3)*abs(V)*abs(I1)*cosd(phi1)
Pout2=sqrt(3)*sqrt(3)*abs(V)*abs(I2)*cosd(phi2)
printf('\nPower delivered is %.2f kW and %.2f kW at power-factors %.4f lag and %.4f lag respectively',Pout1/1000,Pout2/1000,cosd(phi1),cosd(phi2))
