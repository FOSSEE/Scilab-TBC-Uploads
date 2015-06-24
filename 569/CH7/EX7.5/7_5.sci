// calculating maximum error
clc;
R=5*10^6;
V=0.00005*R;
disp(V,'0.005 percent of the reading(micro sec)=');
LSD=1;
ME=V+1;
disp(ME,'Maximum error (micro sec)=')
R=500;
V=0.00005*R;
disp(V,'0.005 percent of the reading(sec)=');
LSD=1;
ME=V+1;
disp(ME,'Maximum error (sec)=')
