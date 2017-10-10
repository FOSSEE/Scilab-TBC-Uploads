clc;
Vgs1=-3;
Vgs2=-5;
Gm0=0.006;
Vgsoff=-8;
Gm1=Gm0*(1-(Vgs1/Vgsoff));
Gm2=Gm0*(1-(Vgs2/Vgsoff));
disp('uS',Gm1*1000000,"Gm1=")
disp('uS',Gm2*1000000,"Gm2=")

