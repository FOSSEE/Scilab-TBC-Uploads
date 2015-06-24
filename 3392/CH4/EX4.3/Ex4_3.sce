clc
// initialization of variables
clear
// Stresses
Sxx=100 // MPa
Syy=-14 // MPa
Sxy=50 // MPa
Y=300 // MPa
// part (a)
Szz=0 // MPa
Syz=0 //MPa
Sxz=0 // MPa
// To calculate principal stresses
I1=Sxx+Syy+Szz
I2=Sxx*Syy-Sxy^2+Szz*Sxx-Sxz^2+Szz*Syy-Syz^2
M=[Sxx Sxy Sxz
   Sxy Syy Syz
   Sxz Syz Szz]
I3=det(M)   
p=[1 -I1 I2 -I3]
Sigma=roots(p)
Smax=Sigma(1)
Smin=Sigma(2)
// Smax=max(Sigma)
// Smin=min(Sigma)
tau_max=Y/2
SF=tau_max*2/(Smax-Smin)
printf('part (a)\n')
printf(' SF = %.2f if the material obeys Tresca criterion',SF)

// part (b)
SF=sqrt(2)*Y/sqrt((Smax^2)+(Smin^2)+(Smin-Smax)^2)
printf('\n part (b)')
printf('\n SF = %.2f if the material obeys von Mises criterion',SF)
