clc;
d1=0.3;//diameter of inner cylinder in meter
d2=0.31; //diameter of outer cylinder in meter
t=0.98; //torque in newton-meter
w=2*3.14; //amgular veocity in radian/sec
h=0.3; //height of both cylinder in meter
v=((d1/2)*w); //calculating the tangential velocity in m/sec
y=(d2-d1)/2; //calculating thickness of plate in meter
s=t/((2*3.14*(d1/2)*h)*(d1/2)); //calculating shear resisitance in newton/m^2
disp(s);
u=(s*y)/v; //calculating viscosity of liquid
printf('viscosity of liquid is %f newton-sec/m^2',u);
