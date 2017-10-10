
clear//

//Variable Declaration
t=30 //Thickness in mm
h=200 //Depth of the section in mm
w=160 //Width in mm
the=50 //Angle in degrees


//Calculations
A1=t*h //Area of the web portion in mm^2
A2=(w-t)*t //Area of the flange portion in mm^2
x_bar=(A1*t*0.5+A2*(t+(w-t)*0.5))/(A1+A2) //Location of x_bar in mm
y_bar=(A1*h*0.5+A2*t*0.5)/(A1+A2) //Location of y_bar in mm

//Simplfying the computation
a=t*h**3*12**-1
b=A1*(200*0.5-y_bar)**2
c=(w-t)*t**3*12**-1
d=A2*(t*0.5-y_bar)**2
Ix_bar=a+b+c+d //Moment of inertia about x-axis in mm^4

//Simplifying the computation
p=h*t**3*12**-1
q=A1*(t*0.5-x_bar)**2
r=t*(w-t)**3*12**-1
s=A2*((w-t)*0.5+t-x_bar)**2
Iy_bar=p+q+r+s //Moment of inertia about y-axis in mm^4

//Simplfying the computation
a1=(t*0.5-x_bar)*(h*0.5-y_bar)
a2=(t*0.5-y_bar)*((w-t)*0.5+t-x_bar)
Ixy_bar=A1*a1+A2*a2 //Moment of inertia in mm^4

//Part 1
//Simplfying the computation
a3=(Ix_bar+Iy_bar)*0.5
a4=(0.5*(Ix_bar-Iy_bar))**2
a5=Ixy_bar**2
I1=a3+sqrt(a4+a5) //Moment of inertia in mm^4
I2=a3-sqrt(a4+a5) //Moment of inertia in mm^4

ThetaRHS=-(2*Ixy_bar)/(Ix_bar-Iy_bar) //RHS of the tan term
theta1=atan(ThetaRHS)*0.5*180*%pi**-1 //Angle in degrees
theta2=theta1+90 //Angle in degrees

//Part 2
Iu=a3+sqrt(a4)*cos(2*the*%pi*180**-1)-(Ixy_bar)*sin(2*the*%pi*180**-1) //Moment of inertia in mm^4
Iv=a3-sqrt(a4)*cos(2*the*%pi*180**-1)+(Ixy_bar)*sin(2*the*%pi*180**-1) //Moment of inertia in mm^4
Iuv=sqrt(a4)*sin(2*the*%pi*180**-1)+(Ixy_bar)*cos(2*the*%pi*180**-1) //Moment of inertia in mm^4
    
    
//Result
printf("\n The Principal Moment of inertias are as follows")
printf("\n I1= %0.0f mm^4 and I2= %0.0f mm^4",I1,I2)
printf("\n Princial direction are theta1= %0.1f degrees theta2= %0.1f degrees",theta1,theta2)
printf("\n The moment of inertia along the uv-axis is %0.0f mm^4" ,Iuv)
