clc
// initialization of variables
clear
sig_xx=-10 // MPa
sig_yy=30 // MPa
sig_xy=15 // MPa
sig_xz=0 // MPa
sig_yz=0 // MPa
sig_zz=0 //MPa
I1=sig_xx+sig_yy+sig_zz
I2=sig_xx*sig_yy-sig_xy^2+sig_zz*sig_xx-sig_xz^2+sig_zz*sig_yy-sig_yz^2
M=[sig_xx sig_xy sig_xz
   sig_xy sig_yy sig_yz
   sig_xz sig_yz sig_zz]
I3=det(M)  
p=[1 -I1 I2 -I3]
sigma=roots(p)
printf('I1 = %d  I2 = %d  I3 = %d  ',I1,I2,I3)
printf('\n Sigma_1 = %d  Sigma_2 = %d  SIgma_3 = %d ',sigma(1),sigma(3),sigma(2))
// We have:
// {S_xx-S S_xy S_xz
//  S_xy S_yy-S S_yz
//  S_xz S_yz S_zz-S}*{l m n}=0
// Substituting for Sigma_1
a1=sig_xx-sigma(1)
a2=sig_xy
a3=sig_xz
b1=sig_xy
b2=sig_yy-sigma(1)
b3=sig_yz  
c1=sig_xz 
c2=sig_yz
c3=sig_zz-sigma(1)
// You can solve it using the matrices but since the system is imcoplete we get
n1=0
//bl*11+b2*m1=0
// This implies m1=-b1/b2*l1
// We also have l1^2+m1^2+n1^2=1
l1=1/sqrt(1+(b1/b2)^2)
m1=-b1/b2*l1
printf('\n N1 = %.4fi + %.4fj',l1,m1)
printf('\n or \n N1 = %.4fi + %.4fj',-l1,-m1)
// Similarly Substituting for Sigma_2
a1=sig_xx-sigma(3)
a2=sig_xy
a3=sig_xz
b1=sig_xy
b2=sig_yy-sigma(3)
b3=sig_yz  
c1=sig_xz 
c2=sig_yz
c3=sig_zz-sigma(3)
// here, l2 = m2 = 0
l2=0
m2=0
n2=sqrt(1)
printf('\n N2 = %.4fk',n2)
printf('\n or \n N2 = %.4fk',-n2)
// Similarly Substituting for Sigma_3
a1=sig_xx-sigma(2)
a2=sig_xy
a3=sig_xz
b1=sig_xy
b2=sig_yy-sigma(2)
b3=sig_yz  
c1=sig_xz 
c2=sig_yz
c3=sig_zz-sigma(2)
// On solving, we get 
l3=1/sqrt(1+(b1/b2)^2)
m3=-b1/b2*l3
n3=0
printf('\n N3 = %.4fi + %.4fj',l3,m3)
printf('\n or \n N3 = %.4fi + %.4fj',-l3,-m3)


