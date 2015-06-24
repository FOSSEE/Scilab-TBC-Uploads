clc
//Example 19.7
//Calculate how far downstream does the dye become uniformly distributed throughout the fluid
f=0.0039//dimentionless (fanning friction factor)
D=0.665//ft
L=D*0.56/(f)^0.5//ft
printf("L = %f ft",L);