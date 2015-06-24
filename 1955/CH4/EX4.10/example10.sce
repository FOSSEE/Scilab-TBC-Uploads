clc
clear
//input data
Uh=150//The blade root velocity in m/s
Um=200//The mean velocity in m/s
Ut=250//The tip velocity in m/s
dT0=20//The total change in temperature in K
Ca1m=150//The axial velocity in m/s
l=0.93//The work done factor 
Rm=0.5//Reaction at mean radius
N=9000//Rotational speed in rpm
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air

//calculations
dtb1tb2=((Cp*dT0)/(l*Um*Ca1m))//The difference between the tangent angles of blade angles at mean
atb1tb2=((2*Rm*Um)/(Ca1m))//The sum of the tangent angles of blade angles at mean
b1m=atand((atb1tb2+dtb1tb2)/2)//The inlet blade angle in degree at mean
a2m=b1m//The exit air angle in degree as the Reaction at mean radius is 0.5
b2m=atand(tand(b1m)-dtb1tb2)//The exit blade angle in degree at mean
a1m=b2m//The inlet air angle in degree as the reaction at mean radius is 0.5
Dh=(Uh*60)/(3.141*N)//Hub diameter in m
Dm=(Um*60)/(3.141*N)//Mean diameter in m
Cx1m=Ca1m*tand(a1m)//The whirl velocity at inlet at mean in m/s
Cx2m=Ca1m*tand(a2m)//The whirl velocity at exit at mean in m/s
Cx1h=(Cx1m*(Dh/2)/(Dm/2))//The whirl velocity at inlet at hub in m/s
Cx2h=(Cx2m*(Dh/2)/(Dm/2))//The whirl velocity at exit at hub in m/s
K1=(Ca1m^2)+(2*(Cx1m^2))//Sectional velocity in m/s
Ca1h=((K1)-(2*(Cx1h^2)))^(1/2)//The axial velocity at hub inlet in (m/s)^2
w=(2*3.141*N)/60//Angular velocity of blade in rad/s
K2=(Ca1m^2)+(2*(Cx2m^2))-(2*((Cx2h/(Dh/2))-(Cx1m/(Dm/2))))*(w*(Dm/2)^(2))//Sectional velocity in (m/s)^2
Ca2h=(K2-(2*Cx2h^2)+(2*((Cx2h/(Dh/2))-(Cx1h/(Dh/2))))*(w*(Dh/2)^(2)))^(1/2)//Axial velocity at hub outlet in m/s
a1h=atand(Cx1h/Ca1h)//Air angle at inlet in hub in degree
b1h=atand((Uh-Cx1h)/Ca1h)//Blade angle at inlet in hub in degree
a2h=atand(Cx2h/Ca2h)//Air angle at exit in hub in degree
b2h=atand((Uh-Cx2h)/Ca2h)//Blade angle at exit in hub in degree
W1=Ca1h/cosd(b1h)//Relative velocity at entry in hub in m/s
W2=Ca2h/cosd(b2h)//Relative velocity at exit in hub in m/s
Rh=((W1^2)-(W2^2))/(2*Uh*(Cx2h-Cx1h))//The degree of reaction at hub
Dt=(Ut*60)/(3.141*N)//Tip diameter in m
Cx1t=(Cx1m*(Dt/2)/(Dm/2))//The whirl velocity at inlet at tip in m/s
Cx2t=(Cx2m*(Dt/2)/(Dm/2))//The whirl velocity at exit at tip in m/s
Ca1t=(K1-(2*Cx1t^2))^(1/2)//Axial velocity at tip inlet in m/s
Ca2t=(K2-(2*Cx2t^2)+(2*((Cx2t/(Dt/2))-(Cx1t/(Dt/2))))*(w*(Dt/2)^(2)))^(1/2)//Axial velocity at tip outlet in m/s
a1t=atand(Cx1t/Ca1t)//Air angle at inlet in tip in degree
b1t=atand((Ut-Cx1t)/Ca1t)//Blade angle at inlet in tip in degree
a2t=atand(Cx2t/Ca2t)//Air angle at exit in tip in degree
b2t=atand((Ut-Cx2t)/Ca2t)//Blade angle at exit in tip in degree
W1=Ca1t/cosd(b1t)//Relative velocity at entry in tip in m/s
W2=Ca2t/cosd(b2t)//Relative velocity at exit in tip in m/s
Rt=((W1^2)-(W2^2))/(2*Ut*(Cx2t-Cx1t))//The degree of reaction at tip

//output
printf('(a)At the mean\n    (1)The inlet blade angle is %3.2f degree\n    (2)The inlet air angle is %3.2f degree\n    (3)The outlet blade angle is %3.2f degree\n    (4)The outlet air angle is %3.2f degree\n    (5)Degree of reaction is %3.1f \n(b)At the root\n    (1)The inlet blade angle is %3.2f degree\n    (2)The inlet air angle is %3.1f degree\n    (3)The outlet blade angle is %3.1f degree\n    (4)The outlet air angle is %3.1f degree\n    (5)Degree of reaction is %3.1f\n(c)At the tip\n    (1)The inlet blade angle is %3.2f degree\n    (2)The inlet air angle is %3.2f degree\n    (3)The outlet blade angle is %3.2f degree\n    (4)The outlet air angle is %3.2f degree\n    (5)Degree of reaction is %3.1f\n',b1m,a1m,b2m,a2m,Rm,b1h,a1h,b2h,a2h,Rh,b1t,a1t,b2t,a2t,Rt)

