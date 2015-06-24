// Initilization of variables
x=30 // m // distance between two electric poles
Tmax=400 // N // Max Pull or tension
w=3 // N/m // weight per unit length of the cable
// Calculations
// The cable is assumed to be parabolic in shape, its eq'n is y=w*x^2/2*T_0.....(eq'n 1). Substuting the co-ordinates of point B (l/2,h), where h is the sag in the cable.This gives, T_0=(w*(l/2)^2)/(2*h)=wl^2/8*h
// Now the maximum pull or tension occurs at B,
T_B=Tmax // N 
// Hence T_B=Tmax=sqrt(T_0^2+(w*l/2)^2). On simplyfyingthis eq'n we get, 
h=sqrt(x^2/(16*(((Tmax*2)/(w*x))^2-(1)))) // m 
// Results 
clc
printf('The smallest value of the sag in the cable is %f m \n',h)
