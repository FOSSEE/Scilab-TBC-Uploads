clc
// initialization of variables
clear
sig_xx=80 // MPa
sig_yy=60 // MPa
sig_xy=20 // MPa
sig_xz=40 // MPa
sig_yz=10 // MPa
sig_zz=20 // MPa
// Direction cosines at point A
l=1/sqrt(6)
m=2/sqrt(6)
n=1/sqrt(6)
// calculations
SpX=sig_xx*l+sig_xy*m+sig_xz*n
SpY=sig_xy*l+sig_yy*m+sig_yz*n
SpZ=sig_xz*l+sig_yz*m+sig_zz*n
// result
printf('part (a)')
printf('\n The stress vector is = %.3f i + %.3f j + %.3f k',SpX,SpY,SpZ)
// part b
I1=sig_xx+sig_yy+sig_zz
I2=sig_xx*sig_yy-sig_xy^2+sig_zz*sig_xx-sig_xz^2+sig_zz*sig_yy-sig_yz^2
M=[sig_xx sig_xy sig_xz
   sig_xy sig_yy sig_yz
   sig_xz sig_yz sig_zz]
I3=det(M)   
p=[1 -I1 I2 -I3]
sigma=roots(p)
tau_max=(sigma(1)-sigma(3))/2
tau_oct=sqrt((sigma(1)-sigma(2))^2+(sigma(1)-sigma(3))^2+(sigma(2)-sigma(3))^2)*1/3
n=tau_max/tau_oct
printf('\n part (b)')
printf('\n The principal stresses are sigma1= %.3f , sigma2=%.3f , sigma3=%.3f M Pa',sigma(1),sigma(2),sigma(3))
printf('\n and maximum shear stress is = %d M Pa',tau_max)
printf('\n part (c)')
printf('\n octahedral shear stress is %.3f MPa ',tau_oct)
printf('\n Comparing tau_oct and tau_max, we see that \n')
printf(' tau_max = %.3f tau_oct',n)
