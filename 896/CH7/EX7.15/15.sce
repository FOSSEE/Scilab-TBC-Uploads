clc
//Example 7.15
//Calculate the velocity and height of flow in an open channel
v1=4//ft/s
g=32.2//ft/s^2
z1=0.0005//ft
Fr=v1^2/(g*z1)//dimentionless (Fraude number)
ratio_z=-0.5+(0.25+2*Fr)^0.5//dimentionless
//ratio_z = z2/z1
z2=ratio_z*z1//ft
printf("The height of flow in open channel is %f ft\n",z2);
v2=v1/(ratio_z)//ft/s
printf("The velocity of flow in open channel is %f ft/s",v2);