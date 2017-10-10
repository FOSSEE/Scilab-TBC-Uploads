//Example_a_9_6 page no:406
clc;
Vl=400;
Vrnmag=400/sqrt(3);
Vrnang=0;
Vynmag=400/sqrt(3);
Vrnang=-120;
Vbnmag=400/sqrt(3);
Vrnang=-240;
R=10;
omega=314;
L=1;
C=100*10^-6;
Yph=(1/R)+(1/(%i*omega*L))+(%i*omega*C);
Iph=Vrnmag*Yph;//multiplication of Vrnmag and Yph is rounded off in text book so output line current varies sligthly
Iphmag=sqrt(real(Iph)^2+imag(Iph)^2);
Iphang=atand(imag(Iph)/real(Iph));
P=sqrt(3)*Vl*Iphmag*cosd(Iphang);
pf=cosd(Iphang);
disp(Iphmag,"the magnitude of line current is (in A)");
disp(Iphang,"the angle of line current is (in degree)");
disp(P,"the power is (in W)");
disp(pf,"the power factor is");
//multiplication of Vrnmag and Yph is rounded off in text book so output line current varies sligthly
//Iphmag and Iphang are rounded off in text book so calculated power varies with the textbook 
