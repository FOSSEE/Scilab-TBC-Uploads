clc
// initiaization of variables
clear
gs_b=10 //cm
gs_h=10 //cm
d_b=2 //cm
d_h=2 //cm
As= 1 //cm^2
s=10000 //kg/cm^2
// part (a)
Es=2*10^6 //kg/cm^2
Ec=2*10^5 //kg/cm^2
// calculations
e=s/Es
Ac=gs_b*gs_h-(d_b*d_h)
e_c=e*Es*As/(Ec*Ac+Es*As)
s_c=Ec*e_c
e_s=e-e_c
s_s=Es*e_s
// results
printf('part (a) \n The stress in steel and concrete are respectively %d , %.2e kg/cm^2',s_s,s_c)
// part(b)
P=8000 //kg
// calculations
e_c=(e*Es*As-P)/(Ec*Ac+Es*As)
e_s=e-e_c
s_c=Ec*e_c
s_s=Es*e_s
// results
printf('\n part (b) \n The stress in steel and concrete are respectively %.1f , %.2f kg/cm^2',s_s,s_c)


