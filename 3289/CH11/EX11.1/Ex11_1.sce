clc

E=210*10^9 //Pa
d=100 //mm
t=50 //mm
A=0.005
Iz=0.05*(0.1^3)/12
disp(Iz)
Iy=0.1*(0.05^3)/12
disp(Iy)
//r=sqrt(Iy/A)
r= sqrt(Iy/A)
disp(r)//mm
L=2.75

//P=W/tand(15)=3.732
Pcr=(%pi^2*E*Iz)/L^2
disp(Pcr,"into W is= ")
W=Pcr/3.732
disp(W,"in N is= ")

Pcr=(%pi^2*E*Iy)/L^2
disp(Pcr,"into W is= ")
W=Pcr/3.732
disp(W,"in N is= ")

// Ans varies due to round of error
