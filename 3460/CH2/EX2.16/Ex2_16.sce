clc;
L1=10*1e-3; //in henry
c3=10*1e-12; //in faraday
pi=3.14;
fr=1/(2*pi*sqrt(L1*c3));
disp(+'Hz',fr,'resonant frequency =')
