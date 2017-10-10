//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_5.sce

clc;
clear;
V=1+%i*0;
Xd=1.0;
Xq=0.6;
pf=0.8;
theta=acosd(pf);
Ia1=pf-%i*sind(acosd(pf));
Ia=1.0;               //phase magnitude of Ia

tan_del=(Ia*Xq*cosd(theta))/(V+(Ia*Xq*sind(theta)));
del=atand(real(tan_del));
Ef_dash=((V+(Ia*Xq*sind(theta)))^2+(Ia*Xq*cosd(theta))^2)^(1/2);

Ef=real(Ef_dash)+(Ia*sind(theta+del)*(Xd-Xq));
disp(Ef,'Magnitude excitation voltage in p.u is')

Ef_double_dash=V*(1+%i*0)+%i*((cosd(theta)-%i*sind(theta))*Xd);
disp(Ef_double_dash,'The rectangular value of double excited voltage in p.u is')

Ef_double_dash_mag=sqrt(real(Ef_double_dash)^2+imag(Ef_double_dash)^2);
Ef_double_dash_ang=atand(imag(Ef_double_dash)/real(Ef_double_dash));
printf("\n The polar form of double excited voltage=%1.2f angle%2.3f degree \n",Ef_double_dash_mag,Ef_double_dash_ang)

