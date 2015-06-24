clear;
clc;

//Example4.8[Cooling of a Short Brass Cylinder]
//Given:-
Ti=120;//Initial Temperature[degree Celcius]
T_ambient=25;//Temperature of atmospheric air[degree Celcius]
h=60;//convetcion heat transfer coefficient[W/m^2.degree Celcius]
r=0.05;//radius of cylinder[m]
L=0.06;//thickness[m]
a=3.39*(10^(-5));//Diffusivity of brass[m^2/s]
k=110;//Thermal conductivity of brass[W/m.degree Celcius]
t=900;//[seconds]
//Solution (a):-
disp("At the center of the plane wall")
tau1=(a*t)/(L^2);
Bi1=(h*L)/k;
disp("respectively",Bi1,"and",tau1,"Fourier no and Biot no are")
disp("At the center of the cylinder")
tau2=(a*t)/(r^2);
Bi2=(h*r)/k;
disp("respectively",Bi2,"and",tau2,"Fourier no and Biot no are")
theta_wall_c=0.8;//(T(0,t)-T_ambient)/(Ti-T_ambient)
theta_cyl_c=0.5;//(T(0,t)-T_ambient)/(Ti-T_ambient)
T_center=T_ambient+((theta_wall_c*theta_cyl_c)*(Ti-T_ambient));//[degree Celcius]
disp("degree Celcius",round (T_center),"The temperature at the center of the short cylinder is")
//Solution (b):-
//The centre of the top surface of the cylinder is still at the center of the lonf cylinder(r=0),but at the outer surface of the plane wall(x=L).
x=L;//[m]
y=x/L;
//For Bi=Bi1 and x=1
theta_wall_L=0.98*theta_wall_c;//(T(L,t)-T_ambient)/(Ti-T_ambient)
T_surface=T_ambient+((theta_wall_L*theta_cyl_c)*(Ti-T_ambient));//[degree Celcius]
disp("degree Celcius",round (T_surface),"The temperature at the top surface of the cylinder")