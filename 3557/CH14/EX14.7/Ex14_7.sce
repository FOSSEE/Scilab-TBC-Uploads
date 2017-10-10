//Example 14.7//
Em=6.9*10^3;//MPa
Ef=72.4*10^3;//MPa
vm=0.4;
Ef=72.4*10^3;//MPa
vf=0.6;
km=0.17;//W/(m.k)
kf=0.97;//W/(m.k)
vm=0.4;
vf=0.6;
Ec=(Em*Ef)/((vm*Ef)+(vf*Em))
mprintf("Ec = %e MPa",Ec)
kc=(km*kf)/((vm*kf)+(vf*km))
mprintf("\nkc = %f W/(m.k)",kc)
