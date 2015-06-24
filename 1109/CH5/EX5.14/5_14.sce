clear;
clc;
R=55;L=0.6*(10^-3);G=1*(10^-6);C=0.04*(10^-6);f=800;r=8;l=0.1;d=2.5; //value of l(loading coil inductance) as taken in solution
w=2*%pi*f;
Z=round(R+(%i*w*L));
Y=G+(%i*w*C);
Zo=sqrt(Z/Y);
P=round(sqrt(Z*Y)*10^4)/10^4;
Zc=r+(%i*w*l);
A=fix(((cosh(P*d))+(Zc*(sinh(P*d))/(2*Zo)))*10^3)/10^3;
Pl=(acosh(A))/d;
al=real(Pl);
bl=imag(Pl);
printf("New value of attenuation constant = %f neper/km\n",round(al*100)/100);
printf(" New value of phase constant = %f rad/km\n",round(bl*1000)/1000);
Lc=L+(l/(d*10^3));
Fc=1/(3.14*(sqrt(Lc*C*d)));
printf(" Cutoff frequency = %f * 10^4 Hz",round(Fc*10^-2)/10^2);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
