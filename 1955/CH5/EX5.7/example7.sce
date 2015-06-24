clc
clear
//input data
rh=0.225//Blade roof radius in m
rt=0.375//Blade tip radius in m
b1m=45//Inlet angle of the rotor blade at mid height in degree
a1m=76//Outlet angle of the nozzle blade at mid height in degree
b2m=75//Outlet angle of the rotor blade at mid height in degree
N=6000//Speed of turbine in rpm

//calculations
rm=(rh+rt)/2//Mean radius in m
Um=(2*3.14*rm*N)/60//Mean blade speed at mean radius in m/s
Ca=Um/((tand(a1m))-(tand(b1m)))//Flow velocity in m/s
Cx1m=Ca*tand(a1m)//Velocity of whirl at inlet at mid height in m/s
Cx2m=Ca*tand(b2m)-Um//Velocity of whirl at inlet at mid height in m/s
Cx1h=(Cx1m*rm)/rh//Velocity of whirl at inlet at hub height in m/s
a1h=atand(Cx1h/Ca)//Inlet angle of the nozzle blade at hub height in degree
Uh=(2*3.1415*rh*N)/60//Mean blade speed at hub in m/s
b1h=atand(tand(a1h)-(Uh/Ca))//Inlet angle of the rotor blade at hub in degree
Cx2h=Cx2m*rm/rh//Velocity of whirl at outlet at hub in m/s
b2h=atand((Uh+Cx2h)/Ca)//Outlet angle of the rotor blade at hub in degree
Cx1t=Cx1m*rm/rt//Velocity of whirl at inlet at tip in m/s
a1t=atand(Cx1t/Ca)//Inlet angle of the nozzle blade at tip height in degree
Ut=(2*3.14*rt*N)/60//Mean blade speed at tip in m/s
b1t=atand(tand(a1t)-(Ut/Ca))//Inlet angle of the rotor blade at tip in degree
Cx2t=Cx2m*rm/rt//Velocity of whirl at outlet at tip in m/s
b2t=atand((Ut+Cx2t)/Ca)//Outlet angle of the rotor blade at hub in degree
Rh=(Ca/(2*Uh))*(tand(b2h)-tand(b1h))//Degree of reaction at hub
Rt=(Ca/(2*Ut))*(tand(b2t)-tand(b1t))//Degree of reaction at tip

//output
printf('(a)for hub\n    (1)Inlet angle of the nozzle blade at hub height is %3.1f degree\n    (2)Inlet angle of the rotor blade at hub is %3i degree\n    (3)Outlet angle of the rotor blade at hub is %3.2f degree\n    (4)Degree of reaction at hub is %3.3f\n(b)for tip\n    (1)Inlet angle of the nozzle blade at tip height is %3.2f degree\n    (2)Inlet angle of the rotor blade at tip is %3i degree\n    (3)Outlet angle of the rotor blade at tip is %3i degree\n    (4)Degree of reaction at tip is %3.3f',a1h,b1h,b2h,Rh,a1t,b1t,b2t,Rt)
