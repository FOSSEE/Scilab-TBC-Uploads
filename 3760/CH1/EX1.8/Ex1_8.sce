clc;
P=33000; // rated power of transformer
E1=2200; // primary voltage
E2=220; // secondary voltage
k=E2/E1; // turn's ratio
r1=2.4; //primary winding resistance in ohm
x1=6; // primary winding reactance in ohm
r2=0.03; //secondary winding resistance in ohm
x2=0.07; //secondary winding reactance in ohm
r12=r1*k^2; //primary resistance referred to secondary
x12=x1*k^2; //primary reactance referred to secondary
printf('primary resistance and reactance referred to secondary are %f ohm and %f ohm\n',r12,x12);
r21=r2/k^2; //secondary resistance referred to primary
x21=x2/k^2; //secondary reactance referred to primary
printf('secondary resistance and reactance referred to primary are %f ohm and %f ohm\n',r21,x21);
re1=r1+r21;
xe1=x1+x21;
printf('equivalent resistance and reactance referred to primary are %f ohm and %f ohm\n',re1,xe1);
re2=r2+r12;
xe2=x2+x12;
printf('equivalent resistance and reactance referred to secondary are %f ohm and %f ohm\n',re2,xe2);
Ip=P/E1;
printf('primary full load current is %f A\n',Ip);
Is=P/E2;
printf('secondary full load current is %f A\n',Is);
O=Ip^2*re1;
printf('ohmic losses at full load is %f W\n',O);
Ils=160; // secondary side load current
Ilp=Ils*k; // primary side load current
Ze1=sqrt(re1^2+xe1^2);
V=Ilp*Ze1;
printf('Voltage applied to h.v side in order to obtain 160A short circuit cirrent in low voltage winding is %f V\n',V);
Pi=Ilp^2*re1;
printf('power input is %f W',Pi);
