clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.12 page no 89
//given
ensqr=8*10^-16//noise voltage
insqr=9*10^-25//rms noise current
Rs=9.42*10^3//sourse resistance
k=1.38*10^-23//Boltzmmans constant
T=290//tempreture
N=ensqr+insqr*Rs^2+4*k*T*Rs//total noise
disp(N,'the total noise is ')
disp('If the sourse resistance is zero,the total noise is ')
disp('N=ensqr=8*10^-16')
