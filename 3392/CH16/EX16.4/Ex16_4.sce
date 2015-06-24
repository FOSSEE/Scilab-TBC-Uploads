clc
// initialization of variables
clear
E=72 //Gpa
v=0.33
S_u=470 //MPa
Y=330 //MPa
S_an=190 //MPa
N=1e+06 //cycles
T=10 //mm
D=59 //mm
d=50 //mm
t=3 //mm
rho=t
P_min=20 //kN
q=0.95
//calculations
P_min=P_min*10^3
S_cc=1.90
S_ce=1+q*(S_cc-1)
A=T*d
S_nMin=P_min/A
S_nam=S_an/S_ce
//(S_na/S_nam)+(S_nm/S_u)^2=1
// S_nm^2=S_nMin^2+S_na^2+2*S_na*S_nMin
c=S_nMin^2-S_u^2
a=1
b=2*S_nMin+S_u^2/S_nam
S_na=roots([a b c])
S_na=S_na(2)
// Solving gives S_na
S_nm=S_nMin+S_na
S_nMax=S_nMin+2*S_na
P_max=A*S_nMax
S_max=S_nm+S_ce*S_na
S_min=S_nm-S_ce*S_na
printf('P_max = %.1f kN',P_max/10^3)
printf('\n S_max = %.1f MPa',S_max)
printf('\n S_min = %.1f MPa',S_min)




