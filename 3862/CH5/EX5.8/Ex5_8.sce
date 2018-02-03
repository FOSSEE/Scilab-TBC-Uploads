clear
//
w=20000.0    //weight of upper block
o=15.0      //The angle of friction for all surfaces of contact
u=tan(o)  //coefficient of friction
//R1 R2 are forces
Or1=15.0     //angle force R1 makes with x axis
Or2=35.0       //angle force R2 makes with Y axis
R2=w*sin((90-Or1)*3.14/180.0)/sin((90+Or1+Or2)*3.14/180.0)
//applyig lamis theorem on block B
Or1=15.0     //angle force R3 makes with Y axis
Or2=35.0       //angle force R2 makes with Y axis
P=R2*sin((180-Or1-Or2)*3.14/180.0)/sin((90+Or1)*3.14/180.0)
printf("\n Force = %0.3f  N",P)
