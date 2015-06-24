clear;
clc;
R=20;C=0.03*(10^-6);L=0;G=0;r=18.2;l=78*(10^-3);d=2.1;f=3000/(2*%pi);
Rc=R+(r/d);
Lc=L+(l/d);
Fc=1/(%pi*(sqrt(Lc*C*d)));
printf("(i)Cutoff frequency = %f kHz\n",round(Fc*(10^-3)*100)/100);
al=((Rc/2)*sqrt(C/Lc))+((G/2)*sqrt(Lc/C));
printf("(ii)Attenuation per km = %f neper/km\n",fix(al*10000)/10000);
Vp1=(1/(sqrt(Lc*C)))*10^-4;
printf("(iii)Phase velocity = %f * 10^4 km/sec",fix(Vp1*1000)/1000);
//the difference in result of attenuation per km and phase velocity is due to erroneous value in textbook.
disp("The difference in result of attenuation per km and phase velocity is due to erroneous value in textbook")
