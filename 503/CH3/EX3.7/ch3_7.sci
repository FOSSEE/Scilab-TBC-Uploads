// Approx equivalent ckt referred to hv and lv sides resp,

clc;
//open ckt test data with HV side open
ocv=200;
oci=4;
ocp=120;
//short ckt test data with LV side open
scv=60;
sci=10;
scp=300;
//OC test(LV side)
Y_o=oci/ocv;    disp(Y_o,'Y_o(mho)');
G_i=ocp/ocv^2;  disp(G_i,'G_i(mho)');
B_m=sqrt(Y_o^2-G_i^2);   disp(B_m,'B_m(mho)');
//SC test(HV side)
Z=scv/sci;      disp(Z,'Z(ohm)');
R=scp/sci^2;    disp(R,'R(ohm)');
X=sqrt(Z^2-R^2);   disp(X,'X(ohm)');

N_H=2000;
N_L=200;
a=N_H/N_L;                            //transformation ratio

//Equivalent ckt referred to HV side
G_iHV=G_i/a^2;        disp(G_iHV,'G_i(HV)mho');
B_mHV=B_m/a^2;        disp(B_mHV,'B_m(HV)mho');

//Equivalent ckt referred to LV side
RLV=R/a^2;        disp(RLV,'R(LV)ohm');
XLV=X/a^2;        disp(XLV,'X(LV)ohm');