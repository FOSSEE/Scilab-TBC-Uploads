//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.13w
//calculation of the speed and the angular speed of the satellite S2 relative to the satellite S1

//given data
T1=1//period of revolution(in h) of satellite S1
T2=8//period of revolution(in h) of satellite S2
R1=10^4//radius(in km) of the orbit of satellite S1

//calculation
//by Kelpler's third law
//(R2/R1)^3 = (T2/T1)^2
R2=R1*(((T2/T1)^2)^(1/3))
v1=(2*%pi*R1/T1)//speed(in km/h) of satellite S1
v2=(2*%pi*R2/T2)//speed(in km/h) of satellite S2
v=abs(v2-v1)//speed of satellite S2 with respect to satellite S1
w=v/(R2-R1)//angular speed of satellite S2 as observed by an astronaut in satellite S1

printf('the speed of the satellite S2 with respect to the satellite S1 is %3.1e km/h',v)
printf('\nthe angular speed of the satellite S2 as observed by an astronaut in the satellite S1 is %3.2f rad/h',w)
