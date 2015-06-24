// Initilization of variables
omega_ab=5 // rad/s // angular veocity of the bar
AB=0.20 // m
BC=0.15 // m
CD=0.3 // m
theta=30 // degree // where theta= angle made by AB with the horizontal
alpha=60 // degree // where alpha=angle made by CD with the horizontal
// Calculations
// Consider triangle BIC
IB=sind(alpha)*BC*1 // m
IC=sind(theta)*BC*1 // m
v_b=omega_ab*AB // m/s
// let the angular velocity of the bar BC be omega_bc
omega_bc=v_b/IB // radian/second
v_c=omega_bc*IC // m/s
// let the angular velocity of bar DC be omega_dc
omega_dc=v_c/CD // radian/second
// Results
clc
printf('The angular velocity of bar BC is %f rad/s \n',omega_bc)
printf('The angular velocity of bar CD is %f rad/s \n',omega_dc)
