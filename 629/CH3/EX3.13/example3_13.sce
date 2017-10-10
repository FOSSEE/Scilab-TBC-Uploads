clear
clc
//Example 3.13 STABILITY OF A FLOATING BLOCK
//Dimensions of the block
l=0.6; //[m]
b=0.3; //[m]
h=0.3; //[m]
Vb=l*b*h //volume[m^3]
W=318; //weight[N]
g_w=9810; //[N/m^3]
//For equilibrium(vertical direction), -weight+buoyant force=0
d=W/(g_w*l*b) //[m]
//Stability (longitudinal axis)
Io1=((l*b^3)/12)//[m^4]
CG1=0.06; //[m]
V=d*l*b //[m^3]
GM1=Io1/V-CG1 //metacentric height[m]
//The metacentric height is negative hence the block is not stable about the longitudinal axis

//For the block slightly disturbed
VD=W/g_w //displaced volume[m^3]
//(Displaced volume)=(Block volume)-(Volume above the waterline)
//VD=Vb-(w^2*l/4)
w=sqrt((Vb-VD)*4/l) //[m]

//Moment of inertia of waterline
Io2=(l*w^3)/12 //[m^4]
CG2=0.0573; //[m]
GM2=Io2/VD-CG2 //[m]
printf("\n Since the metacentric height is positive, the block will be stable in this slightly disturbed position.\n")

