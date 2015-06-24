//example:-11.5,page no.-617.
//program to determine the stability of the transistor by calculating k and |delta|.
s11=0.894*expm(%i*(-60.6)*%pi/180);
s21=3.122*expm(%i*(123.6)*%pi/180);
s12=0.02*expm(%i*(62.4)*%pi/180);
s22=0.781*expm(%i*(-27.6)*%pi/180);
delta=(s11*s22)-(s12*s21);
[mag_delta,theta_delta]=polar(delta);
k=(1+(abs(delta)^2)-(abs(s11)^2)-(abs(s22)^2))/(2*abs(s12*s21));
Cl=conj(s22-delta*conj(s11))/(abs(s22)^2-abs(delta)^2);
[mag_Cl,theta_Cl]=polar(Cl);
Rl=abs(s12*s21)/(abs(s22)^2-abs(delta)^2);
Cs=conj(s11-delta*conj(s22))/(abs(s11)^2-abs(delta)^2);
[mag_Cs,theta_Cs]=polar(Cs);
Rs=abs(s12*s21)/(abs(s11)^2-abs(delta)^2);
disp([mag_Cl,theta_Cl])
disp([mag_Cs,theta_Cs])
disp(Rl)
disp(Rs)
disp("NOTE:-theta is in radian")