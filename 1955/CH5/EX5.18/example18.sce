clc
clear
//input data
a1=75//Nozzle air angle in degree
Rh=0//Degree of reaction
N=6000//Running speed of hub in rpm
Dh=0.45//Hub diameter in m
Df=0.75//Tip diameter in m


//calculations
Uh=(3.1415*Dh*N)/60//Hub speed in m/s
C1h=Uh/((sind(a1))/2)//Velocity of steam at exit from nozzle in hub in m/s
Cah=C1h*cosd(a1)//Axial velocity at hub in m/s
Cx1h=C1h*sind(a1)//Whirl component of velocity at inlet in hub in m/s
b1h=atand((Cx1h-Uh)/Cah)//Rotor blade angle at entry at hub section in degree
b2h=b1h//Rotor blade angle at exit at mean section in degree as zero reaction section
sopt=sind(a1)/2//Blade to gas speed ratio at hub
rm=((Dh/2)+(Df/2))/2//Mean radius in m
rmrh=(rm/(Dh/2))^((sind(a1))^2)//Ratio of inlet velocity at hub and mean for constant nozzle air angle at hub section
C1m=C1h/rmrh//Velocity of steam at exit from nozzle at mean section in m/s
Cx1m=Cx1h/rmrh//Velocity of whirl at inlet at mean section in m/s
Ca1m=Cah/rmrh//Axial velocity at mean section in m/s
Um=(3.1415*2*rm*N)/60//Mean blade speed in m/s
b1m=atand((Cx1m-Um)/Ca1m)//Rotor blade angle at entry at mean section in degree
b2m=atand(Um/Ca1m)//Rotor blade angle at exit at mean section in degree for axial exit Cx2=0
s=Um/C1m//Blade to gas ratio at mean
Rm=(Ca1m/(2*Um))*(tand(b2m)-tand(b1m))//Degree of reaction of mean section
rmrt=((rm)/(Df/2))^((sind(a1))^2)//Ratio of inlet velocity at tip and mean for constant nozzle air angle at tip section
C1t=C1m*rmrt//Velocity of steam at exit from nozzle at tip section in m/s
Cx1t=Cx1m*rmrt//Velocity of whirl at inlet at tip section in m/s
Ca1t=Ca1m*rmrt//Axial velocity at tip section in m/s
Ut=(3.1415*Df*N)/60//Mean tip speed in m/s
b1t=atand((Cx1t-Ut)/Ca1t)//Rotor blade angle at entry at tip section in degree
b2t=atand(Ut/Ca1t)//Rotor blade angle at exit at tip section in degree for axial exit Cx2=0
st=Ut/C1t//Blade to gas ratio at tip
Rf=(Ca1t/(2*Ut))*(tand(b2t)-tand(b1t))//Degree of reaction of tip section

//output
printf('(1)Hub section\n    (a)\n         Absolute air angle is %3.2f degree\n         Relative air angle is %3.2f degree\n    (b)Blade to gas speed ratio is %3.3f\n    (c)Degree of reaction is %3i\n(2)Mean section\n    (a)\n         Absolute air angle is %3.2f degree\n         Relative air angle is %3.2f degree\n    (b)Blade to gas speed ratio is %3.3f\n    (c)Degree of reaction is %3.3f\n(3)Tip section\n    (a)\n         Absolute air angle is %3.2f degree\n         Relative air angle is %3.2f degree\n    (b)Blade to gas speed ratio is %3.3f\n    (c)Degree of reaction is %3.3f\n',b1h,b2h,sopt,Rh,b1m,b2m,s,Rm,b1t,b2t,st,Rf)
