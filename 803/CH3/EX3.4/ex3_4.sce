clc
Va=500;..//radar carrying platform velocity
lambda=0.3;
dutcyc=10^(-6);
PRF=10000;
kp=1.25;..//radar platform dependent factor
Vcomp=kp*Va;..//compression velocity
DR=360*dutcyc*(Vcomp/lambda);..//derotation rate
Vt=(lambda/2)*PRF;..//target velocity
disp("m/s",Vcomp,"The compensation velocity is");
disp("degree/range-cell",DR,"The derotation rate is");
disp("m/s",Vt,"The maximum unambiguous target velocity is");
