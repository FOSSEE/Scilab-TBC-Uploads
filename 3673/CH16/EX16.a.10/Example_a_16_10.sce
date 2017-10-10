//Example_a_16_10 page no:787
clc;
Za=1;
Zb=3;
Zc=5;
Zd=2;
//calculating the Z values
Z11=((Za+Zb)*(Zd+Zc))/(Za+Zb+Zc+Zd);
Z21=((Zb*Zc)-(Za*Zd))/(Za+Zb+Zc+Zd);
Z12=Z21;
Z22=((Za+Zc)*(Zd+Zb))/(Za+Zb+Zc+Zd);
disp(Z11,"the value of Z11 is (in ohm)");
disp(Z21,"the value of Z21 is (in ohm)");
disp(Z12,"the value of Z12 is (in ohm)");
disp(Z22,"the value of Z22 is (in ohm)");
