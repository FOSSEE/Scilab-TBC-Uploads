clc,clear
printf('Example 5.27\n\n')

V_L=220
VA=100*10^3
R_a=0.1 //effective resistacne of alternator
X_a=0.5 //leakage reactance
X_ar=2*X_a

Z_s=complex(R_a,X_a+X_ar)

//Part(1)
phi=acos(0.4)
V_ph=V_L/sqrt(3)
I_L=VA/(sqrt(3)*V_L)//VA=sqrt(3)*V_L*I_L
I_a=I_L
E_ph=sqrt((V_ph*cos(phi)+I_a*R_a)^2+(V_ph*sin(phi)+I_a*(X_a+X_ar))^2)
printf('(i)Required noload voltage is %.3f V',E_ph)

//Part(2)
V_ph2=0
E_ph2=sqrt((V_ph2*cos(phi)+I_a*R_a)^2+(V_ph2*sin(phi)+I_a*(X_a+X_ar))^2)
printf('\n(ii)Required noload voltage is %.3f V',E_ph2)
