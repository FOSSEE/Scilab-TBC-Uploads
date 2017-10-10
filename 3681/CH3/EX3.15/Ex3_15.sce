// Calculating the magnetic pull, unbalanced magnetic pull and ratio of unbalanced magnetic pull to useful force
clc;
disp('Example 3.15, Page No. = 3.71')
// Given Data
Power = 75000;// Power rating in W
f = 50;// Frequency in Hz
p = 2;// Number of poles
D = 0.5;// Stator bore in meter
L = 0.2;// Axial length of core in meter
lg = 5;// Length of air gap
ATm = 4500;// Peak magnetizing mmf per pole
Bm = ATm*4*%pi*10^(-7)/(lg*10^(-3));// Peak value of flux density in Wb per meter square
// Calculation of magnetic pull per pole
MP = Bm*Bm*D*L/(3*4*%pi*10^(-7));// Magnetic pull per pole (Flux Distribution is sinusoidal)
disp(MP,'(a)    Magnetic pull per pole (N)=');
//in book answer is 33.9 in kN  The answers vary due to round off error
// Calculation of unbalanced magnetic pull
e = 1;// Displacement of rotor axis in mm
Pp = %pi*D*L*Bm*Bm*e/(lg*4*4*%pi*10^(-7));// Unbalanced magnetic pull per pair of poles
disp(Pp,'(b)    Unbalanced magnetic pull per pair of poles (N)=');
//in book answer is 16000 in N  The answers vary due to round off error
// Calculation of Ratio of unbalanced magnetic pull to useful force
Speed = 2*f/p;// Speed in r.p.s.
T = Power/(2*%pi*Speed);// Useful torque in Nm
F = T/(D/2);// Useful force in N
Ratio = Pp/F;// Ratio of unbalanced magnetic pull to useful force
disp(Ratio,'(c)    Ratio of unbalanced magnetic pull to useful force=');
//in book answer is 16.8  The answers vary due to round off error
