//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.3w
//calculation of the minimum radius of the wire used if it is not to break

//given data
m1=1//mass(in kg) of block1
m2=2//mass(in kg) of block2
Ss=2*10^9//breaking stress(in N/m^2)  of the metal
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//using equation ....stress = tension / Area of cross secion
//T - (m1*g) = m1 * a...........(1)
//(m2*g) - T = m2*a.............(2)
//Adding equation (1) and equation (2),we get
a=((m2*g)-(m1*g))/(m1+m2)
T=(m1*g)+(m1*a)//tension in the string from equation (1)
r=sqrt(T/(Ss*%pi))//radius

printf('the minimum radius of the wire used if it is not to break is %3.1e m',r)
