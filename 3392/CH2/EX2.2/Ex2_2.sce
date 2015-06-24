clc
// initialization of variables
clear
sig_xx=20 // MPa
sig_yy=10 // MPa
sig_xy=30 // MPa
sig_xz=-10 // MPa
sig_yz=80 // MPa
I2=-7800 // (MPa)^2
// part (a)
// Assume sig_zz=k and evaluate determinants to solve for k
det1=sig_xx*sig_yy-sig_xy^2
//det2=k*sig_xx-sig_xz^2
//det3=k*sig_yy-sig_yz^2
k=(I2-det1+sig_xz^2+sig_yz^2)/(sig_xx+sig_yy)
sig_zz=k
I1=sig_xx+sig_yy+sig_zz
M=[sig_xx sig_xy sig_xz
   sig_xy sig_yy sig_yz
   sig_xz sig_yz sig_zz]
I3=det(M)   
// p=poly([1 -I1 I2 -I3], "x")
p=[1 -I1 I2 -I3]
sigma=roots(p)
// results
printf('\n part (a) \n')
printf(' The unknown stress component is = %.d M Pa and the stress invariants I1, I2, I3 are respectively %.d , %.d , %.d ',sig_zz,I1,I2,I3)
printf('\n The principal stresses are sigma1= %.3f , sigma2=%.3f , sigma3=%.3f M Pa',sigma(2),sigma(3),sigma(1))
