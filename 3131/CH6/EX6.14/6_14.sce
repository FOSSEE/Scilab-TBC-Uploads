clear all; clc;
disp("Ex 6_14")
disp("Figure 6-27b shows the free body diagram")
//Applying equations of equilibrium
//summing moments about C and equating to zero
a1=60
a=a1*%pi/180
F_AB=(2000*2)/(sin(a)*4)
printf('\n F_AB = %0.1f N',F_AB)
//summinf forces in X direction
Cx=F_AB*cos(a)
printf('\n Cx = %0.0f N',Cx)
//summing forces in Y direction
Cy=2000-(F_AB*sin(a))
printf('\n Cy = %0.0f N\n',Cy)

//Alternate method ignoring AB is not a two force member
disp("Alternate method")
A=[3*sin(a),-3*cos(a),0,0;0,-4,0,0;1,0,-1,0;0,1,0,1]
B=[0;-4000;0;2000]
C=inv(A)
D=C*B 
Bx=D(1)
By=D(2)
Cx=D(3)
Cy=D(4)


//Result
printf('\n The values are')
printf('\n Bx=%0.0f \n By=%0.0f \n Cx=%0.0f \n Cy=%0.0f \n All values are in N',Bx,By,Cx,Cy)
