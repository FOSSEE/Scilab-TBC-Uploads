syms r1 r2 r3 r4 a ;

T1=(r3*r4)/(r1*r2)
T2=(a*r4)/(r1);

L1=-(r3/r1)
L2=-r3/(r2);
L3=-r4/r2;
L4=a*r3/r1

delta=1-(L1+L2+L3+L4)+(L1*L3)
del1=1;
del2=1;

TF=(T1*del1 + T2*del2)/delta ;
disp(TF,"Vo/VI = ")


