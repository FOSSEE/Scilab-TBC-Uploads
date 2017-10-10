//to find no of poles, slip and freq of rotor currents at full load, motor speed at twice of full load

clc;
n_s=600;
f=50;
P=120*f/n_s;
disp(P,'no of poles');
n=576;
s=(n_s-n)/n_s;
disp(s,'slip');
f2=s*f;
n_r=s*n_s;
disp(n_r,'rotor speed wrt rotating field(rpm)');
ss=f2*s;
n=(1-ss)*n_s;
disp(n,'motor speed(rpm)');
nn=528;
s_old=s;
s_new=(n_s-nn)/n_s;
fac=s_new/s_old;
disp(fac,'factor is');