clc
clear
//input data
Ur=150//The blade root velocity in m/s
Um=200//The mean velocity in m/s
Ut=250//The tip velocity in m/s
dT0=20//The total change in temperature in K
Ca=150//The axial velocity in m/s
l=0.93//The work done factor 
Rm=0.5//Reaction at mean radius
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air

//calculations
dtb1tb2=((Cp*dT0)/(l*Um*Ca))//The difference between the tangent angles of blade angles at mean
atb1tb2=((2*Rm*Um)/(Ca))//The sum of the tangent angles of blade angles at mean
b1m=atand((atb1tb2+dtb1tb2)/2)//The inlet blade angle in degree at mean
a2m=b1m//The exit air angle in degree as the Reaction at mean radius is 0.5
b2m=atand(tand(b1m)-dtb1tb2)//The exit blade angle in degree at mean
a1m=b2m//The inlet air angle in degree as the reaction at mean radius is 0.5
rmrh=Um/Ur//The ratio of radii of mean and root velocities at hub
a1h=atand(tand(a1m)*(rmrh))//The inlet air angle in degree at hub
b1h=atand((Ur/Ca)-(tand(a1h)))//The inlet blade angle in degree at hub
a2h=atand(tand(a2m)*(rmrh))//The outlet air angle in degree at hub
b2h=atand((Ur/Ca)-(tand(a2h)))//The outlet blade angle in degree at hub
Rh=((Ca*(tand(b1h)+tand(b2h)))/(2*Ur))//The degree of reaction at the hub
rmrt=Um/Ut//The ratio of radii of mean and tip velocities at tip
a1t=atand(tand(a1m)*(rmrt))//The inlet air angle in degree at tip
b1t=atand((Ut/Ca)-(tand(a1t)))//The inlet blade angle in degree at tip
a2t=atand(tand(a2m)*(rmrt))//The outlet air angle in degree at tip
b2t=atand((Ut/Ca)-(tand(a2t)))//The outlet blade angle in degree at tip
Rt=((Ca*(tand(b1t)+tand(b2t)))/(2*Ut))//The degree of reaction at tip

//output
printf('(a)At the mean\n    (1)The inlet blade angle is %3.2f degree\n    (2)The inlet air angle is %3.2f degree\n    (3)The outlet blade angle is %3.2f degree\n    (4)The outlet air angle is %3.2f degree\n    (5)Degree of reaction is %3.1f \n(b)At the root\n    (1)The inlet blade angle is %3.2f degree\n    (2)The inlet air angle is %3.2f degree\n    (3)The outlet blade angle is %3.2f degree\n    (4)The outlet air angle is %3.2f degree\n    (5)Degree of reaction is %3.3f\n(c)At the tip\n    (1)The inlet blade angle is %3.2f degree\n    (2)The inlet air angle is %3.2f degree\n    (3)The outlet blade angle is %3.2f degree\n    (4)The outlet air angle is %3.2f degree\n    (5)Degree of reaction is %3.3f\n',b1m,a1m,b2m,a2m,Rm,b1h,a1h,b2h,a2h,Rh,b1t,a1t,b2t,a2t,Rt)
