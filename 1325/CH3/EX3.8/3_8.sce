//to find the velocity and acceleration of the piston along the cylinder, the angular velocity and angular acceleration of the connecting rod cp and the coriolis component of the acceleration of P
clc
//given
OC=3//inches
CP=9//inches
N=1200 //rpm (clockwise)
X=55 //degrees
//from the figure 66
OP=10.35//inches
PM=10.74//inches
OM=2.95//inches
PC=12.84//inches
PR=PC
RV=2.49//inches
UV=1.29//inches
OU=5.90//inches
PV=13.05//inches
OV=6.06//inches
OQ=OP
//Solution
w=(%pi*N)/30//the angular velocity of the cylinder line OP
Vq=w*(OP/12)//the velocity of Q
Vp=w*(PM/12)//The velocity of P
w1=Vp/(CP/12)//The angular velocity of CP
Vpq=w*(OM/12)//the velocity of sliding of the piston along the cylinder
fq=w^2*(OQ/12)//the centripetal acceleration of Q
Acp=w1^2*(PC/12)//The centripetal component of acceleration of P
Atp=w^2*(RV/12)//The tangential component of acceleration of P
acp=Atp/(CP/12)// The angular acceleration of the connecting rod CP
f=w^2*(UV/12)//component c
d=2*w*Vpq//component d
Ap=w^2*PV//the resultant acceleration of P
Apq=w^2*OV//the acceleration of P realative to Q
printf("\nThe velocity and acceleration of the piston along the cylinder are %.1f ft/s and %.f ft/s^2 respectively\nThe angular velocity and angular acceleration of the connecting rod cp are %.1f rad/s and %.f rad/s^2 respectively\nAnd the coriolis component of the acceleration of P is %.f ft/s^2\n",Vpq,f,w1,acp,d)
