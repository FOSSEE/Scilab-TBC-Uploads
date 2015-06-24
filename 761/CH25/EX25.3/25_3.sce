clc;
// page no 922
// prob no 25_3
L=45;
T_Rtx=50; T_Rrx=75; T_Rf=100;
T_RT=sqrt(T_Rtx^2 + T_Rrx^2 + T_Rf^2);
// a) for NRZ
fb=1/T_RT;
disp('GHz',fb,'a) The maximum bit rate for NRZ');
// b) for RZ
fb=1/(2*T_RT);
disp('GHz',fb,'b) The maximum bit rate for NRZ');