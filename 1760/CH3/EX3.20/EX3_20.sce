 //Example 3.20   pg no-187
Ip=100;   //LINE CURRENT
COSQ=0.787;
SINQ=0.617;
pi=3.14;
Vp=1100/1.732;
W=(2*pi*50)
Z=Vp/Ip;
R=Z*COSQ;
Xc=Z*SINQ
C=1/(W*Xc)
disp('i) Z = '+string (Z)+' ohm');
disp('ii) R = '+string (R)+' ohm');
disp('iii)  Xc = '+string (Xc)+' ohm');
disp('iiii)capacitance (C) = '+string (C)+' F');
