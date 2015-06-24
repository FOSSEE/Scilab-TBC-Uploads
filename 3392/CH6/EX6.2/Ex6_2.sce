clc
// initialization of variables
clear
T=113 //Nm
L1=1 //m
L2=1.27 //m
Y=414 //MPa
G=77 //GPa
SF=2
// part (a)
T1=T*2
T2=T
Y=Y*10^6
G=G*10^9
tau_max=0.25*Y
r1=(2*T1/(%pi*tau_max))^(1/3)
d1=2*r1
r2=(2*T2/(%pi*tau_max))^(1/3)
d2=2*r2
inch=25.4 //mm
printf(' part (a) \n')
printf(' d1 = %.2f mm   d2 = %.2f mm',d1*10^3,d2*10^3)
printf('\n Since the dimensons are not standard, we choose d1 = %.1f mm and d2 = %.2f mm',inch,0.75*inch)
// part (b)
d1=inch*10^-3
r1=d1/2
d2=0.75*inch*10^-3
r2=d2/2
J1=%pi*r1^4/2
th1=T1/(G*J1)
J2=%pi*r2^4/2
th2=T2/(G*J2)
beta_c=L1*th1+L2*th2
bet_deg=beta_c*180/%pi
printf('\n part (b)')
printf('\n The angle of twist = %.3f rad = %.1f degrees',beta_c,bet_deg)
// Change is answer for US people convenience
