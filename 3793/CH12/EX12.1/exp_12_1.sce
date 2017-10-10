clear;
clc;
Vs=1.05;//in pu
Vr=1.0;
//for del 10 degree
X=1;
del=10;
Qs=((Vs^2)/X)-(Vs*Vr*cosd(del)/X);
Qr=(-(Vr^2)/X)+(Vs*Vr*cosd(del)/X);
mprintf("for 10 degree Qs = %.3f  and Qr = %.3f\n",Qs,Qr);
del=20;
Qs=((Vs^2)/X)-(Vs*Vr*cosd(del)/X);
Qr=(-(Vr^2)/X)+(Vs*Vr*cosd(del)/X);
mprintf(" for 20 degree Qs = %.3f  and Qr = %.3f\n",Qs,Qr);
del=30;
Qs=((Vs^2)/X)-(Vs*Vr*cosd(del)/X);
Qr=(-(Vr^2)/X)+(Vs*Vr*cosd(del)/X);
mprintf(" for 30 degree Qs = %.3f  and Qr = %.3f\n",Qs,Qr);
del=40;
Qs=((Vs^2)/X)-(Vs*Vr*cosd(del)/X);
Qr=(-(Vr^2)/X)+(Vs*Vr*cosd(del)/X);
mprintf(" for 40 degree Qs = %.3f  and Qr = %.3f",Qs,Qr);
