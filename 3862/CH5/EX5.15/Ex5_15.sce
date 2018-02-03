clear
//
u=0.3           //coefficient of friction
r=250           //radius of brake drum
l=300            //length of lever arm
M=300000.0      //torque
o=r*3.14/180.0
l2=50.0
//using
//T2 = T1e^(μθ)         T1 and T2 are tension
//(T2-T1)r=M
T1=M/(r*(2.71**(u*o)-1))
T2=(2.71**(u*o))*T1
//Consider the lever arm. Taking moment about the hinge
p=T2*l2/l                     //force P applied at the end of the brake lever
printf("force P applied at the end of the brake lever %0.3f N",p)
