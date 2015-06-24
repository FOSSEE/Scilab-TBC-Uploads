//to find voltage available b/w slip rings and its freq

clc;
disp('(a)');
f=50;
p=6;
n_s=120*f/p;
n=-1000;
s=(n_s-n)/n_s;
f_s=f*s;
disp(f_s,'slip freq(Hz)');
v2=100;
V2=s*v2;
disp(V2,'slip ring voltage(V)');

disp('(b)');
n=1500;
s=(n_s-n)/n_s;
f_s=abs(f*s);
disp(f_s,'slip freq(Hz)');
v2=100;
V2=s*v2;
disp(V2,'slip ring voltage(V)');
