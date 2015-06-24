clc;clear;
//Example 16.9

//given data
R=0.1;//radius in m
pi=3.14;//const
h=6.625*10^-34;//Plank's constant
c=3*10^8;//speed of light in m/s
roi=15;//rate of increase in Wb/s
t=4*10^-4;//period of accerleartion in s
e=1.6*10^-19;//the charge on electron in C

//calculations
N=c*t/(2*pi*R);
IE=roi;//incresed energy in eV
ME=N*IE*10^-6;
disp(ME,'Maximum energy in MeV');
ME=ME*10^6*e;//conversion in V
p=ME/c;
Y=h/p;
disp(Y,'corresponding wavelength of X-rays in m')