syms R1 Ro;

T1=1/(R1)*(R1*2)*(1/Ro);
T2=(1/R1)*(R1)*(-1/Ro);

L1=-2*R1/(R1);
L2=-2*R1/(Ro);
L3=-1;
L4=-(R1/Ro)

delta=1-(L1+L2+L3+L4)+(L1*L3 + L1*L4 + L2*L3)
del1=1-L3;
del2=1-L1;

TF=(T1*del1 + T2*del2)/delta ;
disp(TF,"Io/Vi = ")


