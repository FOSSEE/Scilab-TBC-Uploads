clc
//initialisation of variables
t1=20//Degeree C
t2=-10//degree C
h=0.95//dry
t3=35//Degree C
h1=0.066//lb
h2=1.089//lb
v1=-0.033//lb
v2=1.193//lb
v3=0.508//lb
T1=263//F
T2=293//F
//CALCULATIONS
T=T1/(T2-T1)//F
E=h1-(v1)//lb
C=0.1079//lb
CP=E/C//lb
A=CP*(T2-T1)-E*T1//C.H.U
F=A/T1//units of entropy
H=254.212//C.H.U
H2=274.447//C.H.U
W=[CP*(T2-T1)+h*1.023*(T2-T1)-E*T1]//C.H.U
P=H/W//C.H.U
V=A+v3*15-T1*v3*0.0507//C.H.U
H1=T1*[v3*0.0507+0.05*1.023]//C.H.U
N=H2/(W+V)//C.H.U
//RESULTS
printf('The upper and lower temperature limits respectively=% f F',T)
printf('The vapour compression cycle work done=% f C.H.U',H)
printf('The vapour is now additional work done=% f C.H.U',N)
