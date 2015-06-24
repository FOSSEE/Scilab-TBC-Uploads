//Designing of DC inductor
//Example 14.7(Page No-635) 
clc
clear
//given data
Il=7.2// in amps
dI=1//ripple in amps
L=450*10^-6//inductor units in H
Im=Il+dI
W=0.5*L*Im^2
E=W*10^3
Ku=0.4
printf('Inductor energy:%3.2f mJ\n',E)
Kj=403//from table
x=-0.12
Bm=0.3//assume
Bc=Bm
Ap=((2*W*10^4)/(Bc*Ku*Kj))^(1/(1+x))
printf('primary cross sec area:%2.2f cm^4\n',Ap)
//choosing power type 55090-A2 with
Ap=8.03
Wt=0.131//core wt in kg
Ac=1.32//core area in cm^2
lc=11.62//magnetic path length in cm
ln=6.66//mean length in cm
J=Kj*Ap^x
printf('current density:%3.2f A/cm^2\n',J)
uo=4*%pi*10^-7
Wa=6.11
ur=Bm*lc*10^-2/(uo*Wa*J*Ku)
printf('relative permeability ur:%2.2f \n',ur)
//material with this ur is of type MPP-330Tthat gives
Lc=86*10^-3
Nc=1000//turns
N=Nc*sqrt(L/Lc)
printf('required turns are:%3.1f \n',N)
Aw=Im/J
printf('bare wire cros sectional areaAw:%2.3f cm^2\n',Aw)
//from table we found AWG no is 14which gives
r=82.8*10^-6//ohms/cm
R=ln*N*r
printf('winding resistance:%2.2f ohms\n',R)
Pcu=Il^2*R
printf('copper loss is Pcu:%2.2f W\n',Pcu)
lg=(uo*Ac*N^2/L-lc/ur)*10^-2
printf('air gap length lg:%2.2f cm\n',lg)
