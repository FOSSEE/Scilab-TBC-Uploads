// exa 8.5 Pg 231
clc;clear;close;

// Given Data
p=125;// MPa
dv=60;// mm
del1=40;// mm
del2=20;// mm
tau_max=600;// MPa
G=85;// kN/mm.sq.
C=6;// spring index

Fv=(%pi/4)*dv**2*p/100;// N (Force on the valve)
del_max=del1+del2;// mm (Max. deflection)
Fmax=Fv*dv/del1;// N (Max. force)
Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
// tau = 8*Fmax*C*Kw/(%pi*d**2)
d=sqrt((8*Fmax*C*Kw/(%pi))/tau_max);// mm (Diameter of spring wire)
Dm=6*d;// mm (Mean coil diameter)
n=G*10**3*d*del_max/(8*Fmax*C**3);// no. of turns
n = ceil(n);// no. of turns
nt=n+2;// total no. of turns
lf=nt*d+1.15*del_max;// mm (Free length)
p=lf/(nt-1);// mm (Pitch of coil)
printf('\n Force on the valve = %.1f N',Fv)
printf('\n Maximum deflection = %.f mm', del_max)
printf('\n Maximum force = %.1f N', Fmax)
printf('\n Wahl''s correction factor = %.4f ',Kw)
printf('\n Diameter of spring wire = %.f mm',d)
printf('\n Mean coil diameter = %.f mm', Dm)
printf('\n number of turns = %.f ',n)
printf('\n Total number of turns for square & ground ends = %.f ',nt)
printf('\n Free length = %.f mm. Use 200 mm',lf)
printf('\n Pitch of coil = %.1f mm',p)
