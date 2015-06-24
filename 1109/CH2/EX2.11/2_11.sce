clear;
clc;
f=20*(10^6);Zoc=1390;Zsc=4.61;l=5; 
lo=(3*(10^8))/f; //lo=wavelength
Zo=sqrt(Zoc*Zsc);
printf("-Characteristic impedance = %f ohms\n",round(Zo));
er=(lo/l)^2; //er=relative permittivity of dielectric
printf("-Relative permittivity of dielectric = %f\n",er);
P=fix(((atanh(sqrt(Zsc/Zoc)))/l)*10000)/10000;
a=P*8.686;
printf("-a = %f db/m\n",fix(a*10000)/10000);
Vp=(3*(10^8))/(sqrt(er)*10^8);
printf("-Velocity of propagation = %f * 10^8 m/sec",Vp);
//the difference in result of attenuation constant  is due to erroneous value in textbook.
disp("The difference in result of the value of attenuation constant is due to erroneous value in textbook")
