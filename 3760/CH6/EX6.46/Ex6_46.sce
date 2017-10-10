clc;
f=60; // frequency 
p=6; // number of poles
n=1175; // speed of induction motor
re=0.06; // reduction in frequency
dv=0.1; // reduction in voltage
ws1=(120*f)/p; // synchronous speed
s1=(ws1-n)/ws1; // slip 
s2=((1-re)/((1-dv)^2))*s1; // new slip
ws2=ws1*(1-s2)*(1-re);
printf('New operating speed is %f rpm',ws2);
