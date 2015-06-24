// example:-11.8,page no.-629.
// program to maximum error in Gt and design an amplifier having a 2 dB noise figure with the maximum gain that is compatible with the noise figure.
s11=0.6*expm(%i*(-60)*%pi/180);
s21=1.9*expm(%i*(81)*%pi/180);
s12=0.05*expm(%i*(26)*%pi/180);
s22=0.5*expm(%i*(-60)*%pi/180);
Fmin=1.6;F=1.58;Zo=50;
Fmin1=10^0.16
tao_opt=0.62*expm(%i*(100)*%pi/180);
atan(imag(tao_opt)/real(tao_opt))
Rn=20;
U=abs(s12*s21*s11*s22)/((1-abs(s11)^2)*(1-abs(s22)^2));
x=1/(1+U)^2;
y=1/(1-U)^2;
disp("x<(Gt/Gtu)<y")
N=(((F-Fmin1)*Zo)/(4*Rn))*abs(1+tao_opt)^2
Cf=tao_opt/(N+1);
[mag_Cf,theta_Cf]=polar(Cf);
Rf=sqrt(N*(N+1-abs(tao_opt)^2))/(N+1);
disp(N,'N = ')
disp([mag_Cf,theta_Cf],'center of the 2 db noise figure circle = ')
disp(Rf,'the radius of the 2 dB noise figure circle = ')
Gl=1/(1-abs(s22)^2);
Gl=10*log10(Gl);
Go=abs(s21)^2;
Go=10*log10(Go);
Gs=1.7; // all Gl,Go,Gtu are in dB.
Gtu=Gs+Go+Gl;
disp(Gtu,'the over all transducer gain in db will be = ')