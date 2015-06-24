clc
// initialization of variables
clear
// Defining the legs
a=50 //mm  Top horizontal leg
b=100 //mm Verical leg
c=100 //mm bottom leg
t=4 //mm
Ix=1.734e6 //mm^4
Iy=0.876e6 //mm^4
Ixy=-0.5e6 //mm^4
I=[Ix Ixy
   Ixy Iy]
theta=1/2*atan(-2*Ixy/(Ix-Iy))
Q=[cos(theta) -sin(theta)
   sin(theta) cos(theta)]
I_1=Q*I*Q' // I_1=[IX IXY| IXY IY]
// Finding out the centroidal coordinates
// We have x_bar = Summation(Ai*Xi)/Summation(Ai)
// We take D as reference
Aa=a*t
Ab=b*t
Ac=c*t
A=Aa+Ab+Ac
x_D=((Ac*c/2)+(Aa*a/2))/A
y_D=((Ab*b/2)+(Aa*b))/A
//Finding out B coordinates
xb=a-x_D
yb=b-y_D
x=[xb;yb]
X=Q'*x //New coordinates of B in transformed system
function y=f(l),
    y=t*l/I_1(1)*(X(2)+1/2*l*sin(theta)),
endfunction
F3=intg(0,a,f) // This is the coefficient of VY
e_X=b*F3
printf('eX = %.2f mm',e_X)
// To find eY
function y1=g(l),
    y1=t*l/I_1(4)*(X(1)-1/2*l*cos(theta)),
endfunction
F3=intg(0,a,g) // This is the coefficient of VX
e_Y=b*F3
printf('\n eY = %.2f mm',e_Y)
XC=Q'*[x_D
       y_D]
XC=XC+[e_X
      -e_Y]
printf('\n In terms of intial coordinates, the shear center C is located at \n XC = %.2f mm',XC(1))
printf('\n YC = %.2f mm',XC(2))    
xC=Q*XC
printf('\n The x and y coordinates of shear center C are \n xC = %.2f mm',xC(1))
printf('\n yC = %.2f mm',xC(2))   
