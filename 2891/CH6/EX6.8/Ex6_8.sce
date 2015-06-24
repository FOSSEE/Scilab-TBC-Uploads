//Exa 6.8
clc;
clear;
close;
// given :
G=9 // required gain in dB
f_l=125 // lowest frequency in MHz
f_l=125*10^6 // lowest frequency in Hz
f_h=500 // highest frequency in MHz
f_h=500*10^6 // lowest frequency in Hz
c=3*10^8 // speed of light in m/s
lambda_l=c/f_l // longest wavelength in m
lambda_s=c/f_h // shortest wavelength in m
tau=0.861 // scaling factor
sigma=0.162 // spacing factor
alpha=2*atand((1-tau)/(4*sigma)) // wedge angle in Degrees
L1=lambda_l/2 // in m
L2=tau*L1 // in m
L3=tau*L2 // in m
L4=tau*L3 // in m
L5=tau*L4 // in m
L6=tau*L5 // in m
L7=tau*L6 // in m
L8=tau*L7 // in m
L9=tau*L8 // in m
L10=tau*L9 // in m
L11=tau*L10 // in m

// element spacing relation
//formula : sn=2*sigma*Ln
S1=2*sigma*L1 // in m
S2=2*sigma*L2 // in m
S3=2*sigma*L3 // in m
S4=2*sigma*L4 // in m
S5=2*sigma*L5 // in m
S6=2*sigma*L6 // in m
S7=2*sigma*L7 // in m
S8=2*sigma*L8 // in m
S9=2*sigma*L9 // in m
S10=2*sigma*L10 // in m
S11=2*sigma*L11 // in m


disp("designing of log-periodic antenna:")

disp(L1,"L1 in m:")
disp(L2,"L2 in m:")
disp(L3,"L3 in m:")
disp(L4,"L4 in m:")
disp(L5,"L5 in m:")
disp(L6,"L6 in m:")
disp(L7,"L7 in m:")
disp(L8,"L8 in m:")
disp(L9,"L9 in m:")
disp(L10,"L10 in m:")
disp(L11,"L11 in m:")

disp("elements spacing relation:")
disp(S1,"S1 in m:")
disp(S2,"S2 in m:")
disp(S3,"S3 in m:")
disp(S4,"S4 in m:")
disp(S5,"S5 in m:")
disp(S6,"S6 in m:")
disp(S7,"S7 in m:")
disp(S8,"S8 in m:")
disp(S9,"S9 in m:")
disp(S10,"S10 in m:")
disp(S11,"S11 in m:")
