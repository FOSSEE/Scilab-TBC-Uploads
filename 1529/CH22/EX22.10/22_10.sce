//Chapter 22, Problem 10
clc;
P=20e3;                 //power by shunt generator
V=200;                  //voltage
R=100e-3;               //cable resistance
Rf=50;                  //field winding resistance
Ra=40e-3;               //armature resistance
I=P/V;                  //load current
Vc=I*R;                 //voltage drop in cable
Vt=Vc+V;                //terminal voltage
If=Vt/Rf;               //field current
Ia=I+If;                //armature current
E=Vt+(Ia*Ra);           //generated e.m.f
printf("(a) Terminal voltage = %d V \n\n",Vt);
printf("(b) Generated e.m.f. E = %.2f V",E);
