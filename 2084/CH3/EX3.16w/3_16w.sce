//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.16w
//calculation of angle of the swim and time to cross the river

//given data
vrg=2//velocity(in km/h) of the river with respect to ground
vmr=3////velocity(in km/h) of the man with respect to river
d=.5//width(in km) of the river

//calculation
theta=asind(vrg/vmr);//from equation of relative velocity   vmg=vmr+vrg...taking components along X axis
vmg=vmr*cosd(theta);//taking component along Y axis
time=d/vmg;

printf('swimmer should try to swim,making an angle of %3.2f degree with Y axis',theta);
printf('\ntime taken by the swimmer to cross the river is %3.2f h',time);
