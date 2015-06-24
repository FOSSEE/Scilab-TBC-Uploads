clc
// initialization of variables
clear
Y=345 //MPa
S_u=586 //MPa
d=20 //mm
R=800 //mm
//part (a)
SF=1.8
N=1e+07
S_am=290 //MPa
// P_max not yet known. take it as unity until an equation to be solved is encountered
P_max=1
c=d/2
M=SF/2*P_max*R //M=T
I=%pi*c^4/4
Sigma=M*c/I
J=%pi*c^4/2
tau=M*c/J
S_max=315 //MPa
// P_max^2*(3*(tau/S_max)^2+(Sigmaa/S_max)^2)=1
P_max=sqrt(1/((3*(tau/S_max)^2)+(Sigma/S_max)^2))
P_min=-5/6*P_max
printf('part(a)')
printf('\n P_max = %d N',P_max)
printf('\n P_min = %d N',P_min)



