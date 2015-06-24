clc
// initialization of variables
clear
E=200 //GPa
v=0.29
Y=1600 //MPa
Po=4.2 //kN
Omega=3000 //rpm
th=%pi/3
P=1.75 //kN
R1=4.76 //mm
R11=R1
R2=-4.86 //mm
R22=18.24 //mm
//part (a)
E=E*10^3
Po=Po*10^3
P=P*10^3
B=1/4*(1/R1+1/R2+1/R11+1/R22)+1/4*((1/R1+1/R2-1/R11-1/R22)^2 - 4*(1/R1-1/R11)*(1/R2-1/R22)*(sin(th)^2))^(1/2)
A=1/4*(1/R1+1/R2+1/R11+1/R22)-1/4*((1/R1+1/R2-1/R11-1/R22)^2 - 4*(1/R1-1/R11)*(1/R2-1/R22)*(sin(th)^2))^(1/2)
Del=2*(1-v^2)/(E*(A+B))
BAr=B/A
Cb=0.32
k=0.075
Cs=1.00
Ct=0.3
Cg=0.27
Cz=0.78
b=Cb*(P*Del)^(1/3)
a=b/k
br=b/Del
S_max=-Cs*br
tau_max=Ct*br
tau_oct=Cg*br
Zs=Cz*b
tauo=0.486*b/(2*Del)
Zo=0.41*b
printf('b = %.4f mm',b)
printf('\n a = %.3f mm',a)
printf('\n b/Delta = %d MPa',br)
printf('\n Sigma_max = %d MPa',S_max)
printf('\n tau_max = %d MPa',tau_max)
printf('\n tau_oct_max = %d MPa',tau_oct)
printf('\n Zs = %.3f mm',Zs)
printf('\n Tau_0 = %d MPa',tauo)
printf('\n Zo = %.3f mm',Zo)

// part (b)
tau_oY=sqrt(2)*Y/3
Py = 1/Del*(tau_oY/(Cg*Cb)*Del)^3
printf('\n part (b)')
printf('\n P_Y = %d N',Py)
SF=Py/P
printf('\n SF = %.2f ',SF)



