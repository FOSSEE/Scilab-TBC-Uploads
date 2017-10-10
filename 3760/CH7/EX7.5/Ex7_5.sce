clc;
disp('case a');
s=30; // number of slots
c=60; // number of coils
p=4; // number of poles
k=1; // integer added(or subtracted) to calculate back pitch to make it an odd integer
tc=c*2; //  total coil sides
u=tc/s; // coil sides per slots
yb1=(tc/p)+k;
yb2=(tc/p)-k;
disp('Back pitch is');
disp(yb1);
disp('or');
disp(yb2);
disp('for back pitch=29, top coil sides 1 and 3 in slot 1 are connected to bottom coil 30 and 32 in slot 8. Due to this arrangement split coils can be avoided. But for back pitch= 31, coil sides 34 which is in slot 9 has to be used, so split coils are needed ')
disp('case b');
s=20; // number of slots
c=60; // number of coils
p=4; // number of poles
k=1; // integer added(or subtracted) to calculate back pitch to make it an odd integer
tc=c*2; //  total coil sides
u=tc/s; // coil sides per slots
yb1=(tc/p)+k;
yb2=(tc/p)-k;
disp('Back pitch is');
disp(yb1);
disp('or');
disp(yb2);
disp('for back pitch=29, top coil sides 1,3 and 5 are connected to bottom coil 30, 32 and 34. Due to this arrangement split coils cannot be avoided. But for back pitch= 31, coil sides 1,3 and 5 are connected to bottom coil sides 32, 34 and 36 which are in slot 6,so split coils are not needed ');

