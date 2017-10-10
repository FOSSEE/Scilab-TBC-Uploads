syms a12 a23 a34 a45 a32 a43 a25 a24 a44 

T1= a12*a23*a34*a45;
T2=a24*a12*a45;
T3=a12*a25;

L1=a23*a32;
L2=a34*a43;
L3=a44;
L4=a24*a43*a32;

delta=1-(L1+L2+L3+L4)+(L1*L3)
del1=1;
del2=1;
del3=1-(L2+L3)

TF=(T1*del1 + T2*del2 + T3*del3)/delta ;
disp(TF,"C/R = ")

