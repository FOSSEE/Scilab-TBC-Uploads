
clc;
//e.g 18.17
Vcc=9;
Rc=1*10**3;
Re=680;
beta=100;
R1=33*10**3;
R2=15*10**3;
Vb=Vcc*(R2/(R1+R2));
disp('V',Vb*1,"Vb=");
Vbe=0.7;
Ve=Vb-Vbe;
disp('V',Ve*1,"Ve=");
Ie=Ve/Re;
disp('mA',Ie*10**3,"Ie=");
Ic=Ie;
disp('mA',Ic*10**3,"Ic=");
VRc=Ic*Rc;
disp('V',VRc*1,"VRc=");
Vc=Vcc-VRc;
disp('V',Vc*1,"Vc=");
Vce=Vc-Ve;
disp('V',Vce*1,"Vce=");
