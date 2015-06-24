clc

A=5//cm^2
L=10//cm
T=1173//K
d=6*10^14//cm^-2
P=5.5*10^-2//Pa
M=69.72       //for Ga
Ar=(2.64*10^20*P*A)/(sqrt(M*T)*%pi*L^2)
disp(Ar,"Ar in molecules /cm^2 is= ")
M1=74.92*2       //for As2
Ar1=(2.64*10^20*P*A)/(sqrt(M1*T)*%pi*L^2)
disp(Ar1,"Ar1 in molecules /cm^2 is= ")    // textbook ans is wrong
Gr=(Ar*2.8)/d
disp(Gr,"Gr in sec/min is= ")        //for Ga     textbook ans is wrong

