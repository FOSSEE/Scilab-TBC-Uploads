clc

alpha=45
sigmayp=35*10^6 //Pa
k=840//MPa
n=0.2
L0=3 //m
Aad=10*10^-5 //m^2
Acd=10*10^-5 //m^2
Abd=15*10^-5 //m^2

P=sigmayp*Abd+2*sigmayp*Aad*cosd(45)
disp(P,"plastic yeilding in N is= ")
sigma=k*n^n
disp(sigma,"maxi allowable stress in MPa is= ")
epsilon1=n
disp(epsilon1,"axial stress is= ")
epsilon2=-0.1
disp(epsilon2,"transverse stress is= ")
epsilon3=-0.1
disp(epsilon3,"transverse stress is= ")
z=3*n
disp(z,"total elongation for stability in meter is= ")
