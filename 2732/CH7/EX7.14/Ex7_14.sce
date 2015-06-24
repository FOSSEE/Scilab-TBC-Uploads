clc
//initilization of new variables
clear
wt=0.8 //cm
ft=1.4 //cm
w=10 //cm
y=20 //cm
// Sigma_y: yield stress is not given explicitly
k1=wt*(40-2*ft)/2
Zp=(14*19.3+k1*9.3)*2
If=2*(w*ft^3/12+w*ft*19.3^2)
Iw=wt*(40-2*ft)^3/12
I=Iw+If
Z=I/y
sf=Zp/Z
//Results
printf('shape factor = %.2f ',sf)
