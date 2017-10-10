clc;
P=10000; // rated power of transformer in VA
E1=2000; // full load primary voltage
E2=400; // full load secondary voltage
k=E2/E1; // turns ratio
pf=0.8; // lagging power factor
// initialising results of short circuit test
v=60; // voltage applied for short circuit test
i=4; // short circuit current
p=100; // power dissipated in short circuit;
reh=p/i^2; // total resistance referred to h v side
zeh=v/i; // total impedance referred to h v side
xeh=sqrt(zeh^2-reh^2); // total leakage reactance referred to h v side
rel=reh*k^2; // resistance referred to l v side
xel=xeh*k^2; // reactance referred to l v side
i2l=P/E2; // full load secondary current
vr=i2l*(rel*pf+xel*sqrt(1-pf^2)); // voltage regulation
v2=E2+vr; // total voltage of secondary when transformer is operating on full load
v1=v2/k; // voltage applied to primary to deliver full load
printf('voltage applied to primary to deliver full load is %f v',v1);
