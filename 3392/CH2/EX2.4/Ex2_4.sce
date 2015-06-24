clc
// initialization of variables
clear
sig_xx=120 // MPa
sig_yy=55 // MPa
sig_xy=-55 // MPa
sig_xz=-75 // MPa
sig_yz=33 // MPa
sig_zz=-85 // MPa
// Direction cosines at point A
lA=1/sqrt(3)
mA=1/sqrt(3)
nA=1/sqrt(3)
// Direction cosines at point B
lB=1/sqrt(2)
mB=1/sqrt(2)
nB=0
// calculations
I1=sig_xx+sig_yy+sig_zz
I2=sig_xx*sig_yy-sig_xy^2+sig_zz*sig_xx-sig_xz^2+sig_zz*sig_yy-sig_yz^2
M=[sig_xx sig_xy sig_xz
   sig_xy sig_yy sig_yz
   sig_xz sig_yz sig_zz]
I3=det(M)   
p=[1 -I1 I2 -I3]
sig=roots(p)
sig=gsort(sig)
sigma(1)=sig(1) 
sigma(3)=sig(2)
sigma(2)=sig(3)
// results
printf('\n The principal stresses are sigma1= %.3f , sigma2=%.3f , sigma3=%.3f M Pa',sigma(1),sigma(2),sigma(3))
// Finding about the circles
C11=(sigma(2)+sigma(3))/2
C21=(sigma(1)+sigma(3))/2
C31=(sigma(1)+sigma(2))/2
C12=0
C22=0
C32=0
R1=(sigma(2)-sigma(3))/2
R2=(sigma(1)-sigma(3))/2
R3=(sigma(1)-sigma(2))/2
SnnA=lA^2*sigma(1)+mA^2*sigma(2)+nA^2*sigma(3)
SnsA=sqrt(lA^2*sigma(1)^2+mA^2*sigma(2)^2+nA^2*sigma(3)^2-SnnA^2)
SnnB=lB^2*sigma(1)+mB^2*sigma(2)+nB^2*sigma(3)
SnsB=sqrt(lB^2*sigma(1)^2+mB^2*sigma(2)^2+nB^2*sigma(3)^2-SnnB^2)
printf('\n The details of circles are given below')
printf('\n C1 : (%.2f M Pa, %.e)  R1 = %.2f M Pa \n',C11,C12,R1)
printf('\n C2 : (%.2f M Pa, %.e)  R2 = %.2f M Pa \n',C21,C22,R2)
printf('\n C3 : (%.2f M Pa, %.e)  R3 = %.2f M Pa \n',C31,C32,R3)
printf('\n at point A')
printf('\n Normal stress = %.d M Pa and shear stress = %.2f M Pa',SnnA,SnsA)
printf('\n at point B')
printf('\n Normal stress = %.d M Pa and shear stress = %.2f M Pa',SnnB,SnsB)

