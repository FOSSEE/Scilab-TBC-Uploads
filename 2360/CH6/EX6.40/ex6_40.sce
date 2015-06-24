// Exa 6.40
format('v',7);clc;clear;close;
// Given data
f = 2;// in kHz
f = f * 10^3;// in Hz
R2= 834;// in Ω
C2= 0.124*10^-6;// in F
XC2= 1/(2*%pi*f*C2);// in Ω
R3= 100;// in Ω
C4 = 0.1;// in µF
C4 = C4*10^-6;// in F
XC4= 1/(2*%pi*f*C4);// in Ω
Z2= R2+%i*XC2;// in Ω
Z3= R3;// in Ω
Z4= -%i*XC4;// in Ω
// The bridge balance condition
Z1= Z2*Z3/Z4;// in Ω
mag= abs(Z1);// magnitude of effective impedence in Ω
theta= atand(imag(Z1),real(Z1));// phase angle of effective impedence in °
disp(mag,"The magnitude of effective impedence in Ω is : ")
disp(theta,"The phase angle of effective impedence in ° is")


