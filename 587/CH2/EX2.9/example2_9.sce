clear;
clc;

//Example2.9[Combined Convection and Radiation Condition]
//Given:- 
T_ball=300;//Temperature of spherical metal ball[degree Celcius]
T_ambient=27;//Temperature of ambient air[degree Celcius]
k=14.4;//Thermal conductivity of the ball material[W/m.K]
h=25;//average convection heat transfer coefficient on the outer surface of the ball[W/m^2.K]
e=0.6;//Emissivity of outer surface of the ball
T_surr=290;//
//This is one-dimensional transient heat transfer problem since the temperature within the ball changes with the radial distance r and the time t i.e. T=T(r,t)
//Taking the moment the ball is removed from the oven to be t=0
disp("The initial condition can be expressed as")
disp("T(r,0)=T_ball")
disp("degree Celcius",T_ball)
//The problem possesses symmetry about the mid point(r=0) since the isotherms in this case are concentric spheres, and thus no heat is crossing the mid point of the ball.
disp("The boundary condition at the midpoint i.e. r=0 can be expressed as dT(0,t)/dr=0")
//The heat conducted to the outer surface of the ball is lost to the environment by convection and radiation.
disp("Taking the direction of heat transfer to be the positive r direction, the boundary condition on the outer surface can be expressed as")
disp("-k(dT(r_out,t)/dr)=h[T(r_out)-T_ambient]+e*sigma[(T(r_out)^4)-(T_ambient^4)]")