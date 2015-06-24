// example:-7.3,page no.-347.
// program to find required length,d and Q for l=1 and l=2 resonator mode.
a=0.04755;b=0.02215;eipsilar=2.25;tandelta=0.0004;f=5*10^9;c=3*10^8;
k=(2*%pi*f*sqrt(eipsilar))/c // wave number.
for l=1:1:2
d=(l*%pi)/sqrt((k^2)-((%pi/b)^2)); // m=1 & n=0 mode.
disp(d,'d in meter = ')
end
eta=377/sqrt(eipsilar);
Qc1=3380;// l=1.
Qc2=3864;// l=2.
Qd=2500;  // Q due to dielectric loss only.
Q1=((1/Qc1)+(1/Qd))^-1; // for l=1.
Q2=((1/Qc2)+(1/Qd))^-1; // for l=2.
disp(Q1,'Q1 = ');
disp(Q2,'Q2 = ')