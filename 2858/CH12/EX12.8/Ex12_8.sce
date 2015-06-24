//example 12.8
clc; funcprot(0);
qu=3000;
Ds=3*12;
L=15*12;
FS=3;
Ecore=0.36e6;
f=min(2.5*qu^0.5,0.15*qu);
Qu=%pi*Ds*L*f/1000;
Emass=Ecore*(0.266*80-1.66);
Ec=17.9*Emass;
Ac=%pi/4*Ds^2;
If=0.35;
se=Qu*L/Ac/Ec+Qu*If/Ds/Emass;
Qall=Qu/FS;
disp(Qall,"allowed load in kN");

