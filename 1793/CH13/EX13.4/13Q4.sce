clc
a=30
Ka1=(1-sind(a))/(1+sind(a))
a=35
Ka2=(1-sind(a))/(1+sind(a))
//at z=0 so T0=0
//atz=3
To=3*16
Ta1=Ka1*To
Ta2=Ka2*To

// At z=6
To=3*16+3*(18-9.81)
Ta2=Ka2*To

Pa =(1/2)*3*16+3*13.0+ (1/2)*3*36.1
z= (24 *(3+3/3)+39.0*(3/2)+54.15*(3/3))/Pa
printf('The force per unit length of the wall = %f kN/m\n',Pa)
printf (' The location of the resultant = %f m ',z)
