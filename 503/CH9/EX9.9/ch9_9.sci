//to determine the line current,pf, power ip, shaft torque, mech op and efficiency

clc;
R1=1.4;
R2=.6;
X1=2;
X2=1;
Xm=50;
V=400;
Prot=275;
n_s=1000;
w_s=2*%pi*n_s/60;

disp('slip=0.03');
s=0.03;
I2=(V/sqrt(3))/complex(R1+R2/s,X1+X2);
Im=(V/sqrt(3))/(Xm*complex(cosd(90),sind(90)));
I1=Im+I2;
I_L=abs(I1);disp(I_L,'line current(A)');
pf=cosd(atand(imag(I1)/real(I1)));disp(pf,'pf');
Pip=sqrt(3)*V*abs(I1)*cosd(atand(imag(I1)/real(I1)));disp(Pip,'power i/p(W)');

P_G=3*abs(I2)^2*R2/s;
Pmechg=(1-s)*P_G;disp(Pmechg,'mech power op(W)');
Popnet=Pmechg-Prot;
Tnet=Popnet/(w_s*(1-s));disp(Tnet,'shaft torque(Nm)');
eff=Popnet/Pip;disp(eff,'efficiency');

disp('slip= -0.03');
s=-0.03;
I2=(V/sqrt(3))/complex(R1+R2/s,X1+X2);
Im=(V/sqrt(3))/(Xm*complex(cosd(90),sind(90)));
I1=-(Im+I2);
I_L=abs(I1);disp(I_L,'line current(A)');
pf=cosd(atand(imag(I1)/real(I1)));disp(pf,'pf');
Pip=sqrt(3)*V*abs(I1)*cosd(atand(imag(I1)/real(I1)));disp(Pip,'power i/p(W)');

P_G=3*abs(I2)^2*R2/s;
Pmechop=(1-s)*P_G;
Pmechipnet=-Pmechop;
Pmechipg=Pmechipnet+Prot;disp(Pmechipg,'mech power op(W)');
Tnet=Pmechipg/(w_s*(1-s));disp(Tnet,'shaft torque(Nm)');
eff=Pip/Pmechipg;disp(eff,'efficiency');

disp('slip= 1.2');
s=1.2;
I2=(V/sqrt(3))/complex(R1+R2/s,X1+X2);
Im=(V/sqrt(3))/(Xm*complex(cosd(90),sind(90)));
I1=Im+I2;
I_L=abs(I1);disp(I_L,'line current(A)');
pf=cosd(atand(imag(I1)/real(I1)));disp(pf,'pf');
Pip=sqrt(3)*V*abs(I1)*pf;disp(Pip,'power i/p(W)');

P_G=3*abs(I2)^2*.5/s;
Pmechg=(1-s)*P_G;disp(Pmechg,'mech power op(W)');
Pmechabs=-Pmechg;
n=n_s*(1-s);
w=2*%pi*n/60;
Tnet=Pmechg/w;disp(Tnet,'torque developed(Nm)');
P=Pmechabs+Pip;disp(P,'power disipated(W)');