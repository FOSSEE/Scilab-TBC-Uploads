clc;
R=10.4;L=3.666*(10^-3);G=.08*(10^-6);C=.00835*(10^-6);w=5000;
//value of L and C as taken in solution
Z=R+(%i*w*L);
Y=G+%i*w*C;
Zo=sqrt(Z/Y);
printf('-Zo = %f /_%f ohms\n',fix(abs(Zo)),round(((atan(imag(Zo),real(Zo))*180/%pi))*10)/10);
P=sqrt(Z*Y);
a=real(P);
b=imag(P);
printf('-Attenuation constant a = %f neper/km\n',a);
printf("-Phase constant b = %f radians/km\n",b);
Vp=(w/b)*(10^-5);v=round(Vp*1000)/1000;
printf('(ii)(b)Phase velocity Vp = %f * 10^5 km/sec\n',v);
//the difference in result of Zo is due to erroneous value in textbook.
disp("The difference in result of Zo is due to erroneous value in textbook")
