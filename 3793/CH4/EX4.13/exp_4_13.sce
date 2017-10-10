clear;
clc;
Vs=1.02;
Vr=0.9;
Z=.1;
anglez=80;
Cs=(Vs^2)/Z*exp(complex(0,80));
Cr=-(Vr^2)/Z*exp(complex(0,80));
radius=Vs*Vr/Z;
Pms=((Vs^2)/Z*cosd(anglez))+(Vs*Vr/Z);
dels=180-anglez;
Pmr=-(((Vr^2)/Z*cosd(anglez))-(Vs*Vr/Z));
Ps=((Vs^2)/Z*cosd(anglez))-(Vs*Vr/Z*cosd(anglez+15));
Pr=-(((Vr^2)/Z*cosd(anglez))-(Vs*Vr/Z*cosd(anglez-15)));
loss=Ps-Pr;
mprintf("Sending end maximum power is %.3f pu\n",Pms);
mprintf("Receiving end maximum power is %.3f pu\n",Pmr);
mprintf("Sending end maximum power angle is %.3f pu\n",dels);
mprintf("Receiving end maximum power angle is %.3f pu\n",anglez);
mprintf("Line loss is %.3f pu\n",loss);



