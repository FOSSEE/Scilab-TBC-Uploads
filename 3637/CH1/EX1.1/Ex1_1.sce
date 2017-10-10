//Example 1 Page No:1.81
//given
rc=50000;//ohm
re=100000;//ohm
rs=10000;//ohm
rp=50000;//ohm
beta0=2000;
r0=400000;//ohm
//determine adm,acm,cmrr
rc1=(rc*r0)/(rc+r0);
adm=(-(beta0*rc1)/(rs+rp));//differential mode gain
acm=(-(beta0*rc1)/(rs+rp+2*re*(beta0+1)));//common mode gain
cmrr=20*(log10((1+((2*re*(beta0+1))/(rs+rp)))));//common mode rejection ratio
format(6);
disp("adm = "+string(adm));format(5);//no unit
disp("acm = "+string(acm));format(6);//no unit
disp("cmrr = "+string(cmrr)+" db");


