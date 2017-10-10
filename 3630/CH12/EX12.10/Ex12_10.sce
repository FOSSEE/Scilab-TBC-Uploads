clc;
Vdd=30;
Rd=1100;
Rs=10000;
Idq=[0.0015 0.002];
Vdsqmax=Vdd-Idq(1,1)*(Rd+Rs);
Vdsqmin=Vdd-Idq(1,2)*(Rd+Rs);
disp('V',Vdsqmax,"Vsdqmax=")
disp('V',Vdsqmin,"Vsdqmin=")
