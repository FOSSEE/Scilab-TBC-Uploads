clc
clear
//Input data
f=20//Focal length in cm
fl=[0.015,0.019]//Dispersive powers of crown and flint glasses respectively
r=[1.495,1.53]//Refractive indices respectively

//Calculations
fx=-(fl(1)/fl(2))//Ratio of focal lengths
//Solving two equations
//(1/f)=(1/f1)+(1/f2)
//(f1/f2)=(-0.015/0.019)
f2=((1/fx)+1)/(1/f)//Focal length of converging lens in cm
f1=(fx*f2)//Focal length of diverging lens in cm
r2=(r(2)-1)*f2//Radius of curvature of convergent lens in cm
r1=1/(((1/f1)/(r(1)-1))+(1/r2))//Radius of curvature of divergent lens in cm

//Output
printf('Radius of curvature of converging lens is %3.4f cm \n Radius of curvature of diverging lens is %3.3f cm',r2,r1)
