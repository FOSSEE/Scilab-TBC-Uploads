//The notation has been changed for ease
//Calculations
x=(5*1*3.5+8*1*0.5)/(5*1+8*1) //in
y=(5*1*0.5+8*1*4)/13 //in
//Moment of inertia 
Ix=(1/12)*(5)*(1^3)+(5*2.15*2.15)+(1/12)*(1*8^3)+(8*1.35^2) //in^4
Iy=(1/12)*(1)*(5^3)+(5*1.85*1.85)+(1/12)*(8)*(1^3)+(8*1.15^2) //in^4
Ixy=(8*1*(-1.15)*1.35)+(5*1*1.85*(-2.15)) //in^4
//Mohr circle calculations
d=0.5*(Ix+Iy) //distance to center of the cirlce 
r=sqrt((21^2)+(32.3^2)) 
maxI=d+r //in^4
theta=atand(32.3/21) //degrees maxI occurs at this angle
minI=d-r //in^r
//Result
clc
printf('The moment of inertias are as follows\n Ix=%f in^4,Iy=%f in^4,Ixy=%f in^4\n Imax=%fin^4 and Imin=%f in^4',Ix,Iy,Ixy,maxI,minI)

 
