
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 1
clear ;clc;

//Given data
phi = 30               // phi lies between 29.5 and 30.5
theta = 45             // theta lies between 44.5 and 45.5

// Calculations
// fraction of gas having velocities ia given by
// dn_p_t/n = 1/4/%pi*sin(theta)dt*dp       where t=theta; p=phi
// since dt and dp are small values , above equation can be written in the 
// differnt form as
// dn_p_t/n = 1/4/%pi*sin(theta)*del_t*del_p

del_t = %pi/180             // in radians for 1 degree
del_p = %pi/180             // in radians for 1 degree
theta = 45 * del_t          // in radians

f = 1/(4*%pi)*sin(theta)*del_t*del_p


// output results
mprintf('fraction of gas having velocities = %4.3f E-05', f*1e5)
