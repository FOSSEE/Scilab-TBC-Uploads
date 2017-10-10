clc;
k=100; // Kva rating of transformer
disp('case(a)');
l1=90; // KVA rating of load
pf=0.8; // lagging pf of load
z=0.0075+0.09*%i; // p u leakage impedance of transformer
l1=l1/k; // load expressed in p u with base KVA=100
vd=l1*(real(z)*pf+imag(z)*sqrt(1-pf^2)); // p u voltage regulation
ts=vd*100; // tap setting
printf('Number of turns in the primary winding should be tapped down by %f percent\n',ts);
disp('case(b)');
lk=100; // KW rating of load
pf=0.8; // lagging pf of load
l1=lk/pf; // KVA rating of load
z=0.0075+0.09*%i; // p u leakage impedance of transformer
l1=l1/k; // load expressed in p u with base KVA=100
vd=l1*(real(z)*pf+imag(z)*sqrt(1-pf^2)); // p u voltage regulation
ts=vd*100; // tap setting
printf('Number of turns in the primary winding should be tapped down by %f percent\n',ts);
