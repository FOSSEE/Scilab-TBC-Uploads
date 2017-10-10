// exa 8.1 Pg 227
clc;clear;close;

// Given Data
Fmin=250;// N
Fmax=300;// N
del=8;// mm
C=8;// spring index
tau_d=420;// MPa
G=84;// GPa

// 1. Wahl's correction factor
Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
printf("\n Wahl''s correction factor = %.3f ",Kw)
// 2. Wire diameter
// tau_d=Kw*8*Fmax*C/%pi/d**2
d=sqrt(Kw*8*Fmax*C/%pi/tau_d);// mm
printf('\n Wire diameter = %.2f mm. Use 4.25 mm.',d)
d=4.25;// mm
// 3. Mean coil diameter
Dm=8*d;// mm
printf('\n Mean coil diameter = %.f mm.',Dm)
// 4. Stiffness of spring
k=(Fmax-Fmin)/del;// N/mm
// 5. no. of active turns
n = G*10**3*d/8/C**3/k ;// no. of active turns
printf('\n no. of active turns = %.f',n)
// 6. total no. of turns for squared and ground ends
nt=n+2;// total no. of turns for squared and ground ends
printf('\n total no. of turns for squared and ground ends = %.f',nt)
// 7. Free length of spring
//lf=l_s+del_max+clashallowance(=0.15*del_max)
del_max=del*Fmax/(Fmax-Fmin);//mm
l_s=nt*d;// mm
lf=l_s+del_max+0.15*del_max;// mm
printf('\n Free length of spring = %.1f mm Use 124 mm',lf)
lf=124;//mm
// 8. Pitch of coils
p=lf/(nt-1);//mm
printf('\n Pitch of coils = %.2f mm',p)
// 9. Check for buckling
printf('\n Check for buckling - ')
m=lf/Dm;// > 2.6 provided guide
printf('\n ratio lf/Dm = %.3f > 2.6. So, Providing guide is necessary.',m)
kl_1=0.22;// for hinged ends
kl_2=0.62;// for fixed ends
Fcr_1=k*kl_1*lf;//N (for hinged ends)
Fcr_2=k*kl_2*lf;//N (for fixed ends)
printf('\n Critical load for buckling - ')
printf('\n Fcr = %.1f N for hinged ends < Fmax',Fcr_1)
printf('\n Fcr = %.1f N for fixed ends > Fmax',Fcr_2)
printf('\n From above two calculatio, it can be seen that spring is safe in buckling for fixed ends.')
// 10. Lowest natural frequency for both ends fixed
rau=7800;// N/mm.cube. (Density of spring material)
fn=d/(%pi*n*Dm**2)*sqrt(G*10**3/8/(rau*10**-9));//
printf('\n\n Lowest natural frequency for both ends fixed, fn = %.3f Hz',fn)


