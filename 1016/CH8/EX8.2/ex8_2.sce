clc;clear;
//Example 8.2

//given data
V=12400;//Volatage applied in V
I=0.002;//current drop in A
e=1.6*10^-19;//the charge on electron in C

//calculations
n=I/e;
disp(n,'No. of electrons');
v=(5.93*10^5)*(sqrt(V));
disp(v,'the speed with which they strike in m/s');
Wmin=12400/V;
disp(Wmin,'shortest wavelength in Angstrom')