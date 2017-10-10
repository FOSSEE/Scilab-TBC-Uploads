// exa 8.7 Pg 232
clc;clear;close;

// Given Data
dv=30;// mm
Wv=10;// N
Wl=25;// N
lf=100;// mm
del1=20;// mm
p=3.5;// N/mm.sq.
valve_lift=2;// mm
C=6;// spring index
tau=500;// N/mm.sq.
G=0.84*10**5;// N/mm.sq.

W=(%pi/4)*dv**2*p;// N (load on the valve at operating condition)
W1=W-Wv;//N (Net load on the valve at operating condition)
//W1*100=Wl*150+S1*200+P*300 // taking momens about the fulcrum
//S1*200+P*300=W1*100-Wl*150 ...eqn(1)
valve_lift=20*100/200;// mm //from figure (when spring is extended by 20 mm)
spring_extension=2*200/100;// mm // from figure (when valve is lifted 2 mm)
valve_load=W*12/10;// N // (when valve is lifted 2 mm)
W2=valve_load-Wv;// N // (when valve is lifted 2 mm)
del2=del1+4;// mm (when valve is lifted)
//S2=S1*del2/del1;// spring force when valve is lifted
//S1*del2/del1-s2=0 ... eqn(1)
//W2*100=Wl*150+S2*200+P*300 // taking momens about the fulcrum
//S2*200+P*300 =W2*100-Wl*150 ... eqn(2)
//S1*200+P*300=W1*100-Wl*150 ...eqn(3)
// solving above 3 eqn. by matrix method
A=[del2/del1 -1 0;200 0 300;0 200 300];
B=[0;W1*100-Wl*150;W2*100-Wl*150];
X=A**-1*B;// solution matrix
S1=X(1);// N
S2=X(2);// N
printf('\n Spring force when valve is lifted = %.1f N',S2)
printf('\n\n Design of spring - ')
k=(S2-S1)/(del2-del1);// N/mm (Spring stiffness)
printf('\n Spring stiffness = %.2f N/mm',k)
Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
printf('\n Wahl''s correction factor = %.4f',Kw)
// tau=Kw*8*S2*C/%pi/d**2 max. shear stress
d=sqrt(Kw*8*S2*C/%pi/tau);// mm (spring diameter)
printf('\n spring diameter = %.2f mm or %.f mm',d,d)
d=ceil(d);// mm
// k=G*d/(8*C**3*n) (Spring stiffness)
n=G*d/(8*C**3*k);// no. of active coils
printf('\n no. of active coils = %.2f. Use n=7',n)
n=ceil(n);// rounding
nt=n+1;// total no. of active coils
printf('\n total no. of active coils = %.f',nt)
p=lf/(n-1);// mm (pitch of coils)
printf('\n pitch of coils = %.2f mm',p)









