clc

Mz=11000 //Nm
A1=0.13*0.02 //m
A2=0.15*0.02 //m
z1=0.01 //m
z2=0.075 //m
yA=0.043 //m
zA=-0.106 //m
yB=-0.063 //m
zB=0

//location of the centroid
z=(A1*z1+A2*z2)/(A1+A2)
disp(z,"in meter is= ")

Iz=(0.02*(0.13)^3)/12+ (0.13*0.02*(0.04)^2)+(0.15*(0.02)^3)/12+ (0.15*0.02*(0.035)^2)
disp(Iz,"Iz in meter^4 is= ")
Iy=(0.02*(0.13)^3)/12+ (0.13*0.02*(0.04)^2)+(0.15*(0.02)^3)/12+ (0.15*0.02*(0.035)^2)
disp(Iy,"Iy in meter^4 is= ")
Iyz=0+A1*0.04*(-0.035)+0+A2*(-0.035)*0.03
disp(Iyz,"Iyz in meter^4 is= ")
//thetap=(atand((-2*Iyz)/(Iz-Iy)))/2
//disp(thetap)
I1=(Iz+sqrt(0+(6.79*10^-6)^2))
disp(I1,"I1 in meter^4 is= ")
I2=(Iz-sqrt(0+(6.79*10^-6)^2))
disp(I2,"I2 in meter^4 is= ")
My1=11000*sind(45)
disp(My1,"My1 in Nm is")
Mz1=11000*sind(45)
disp(Mz1,"Mz1 in Nm is")

sigmaxA=((My1*(zA))/I1)-((Mz1*yA)/I2)
disp(sigmaxA,"sigmaxA in MPa is")
sigmaxB=0-((My1*yB)/I2)
disp(sigmaxB,"sigmaxB in MPa is")

My=0
y=((Mz*Iyz)*z)/(Mz*Iy) //.......equal to z=-1.71y
disp(y)


