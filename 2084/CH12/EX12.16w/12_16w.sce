//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.16w
//calculation of the time period of small oscillations

//given data
//h=R.....height equal to radius of the circle
g=%pi^2//gravitational acceleration(in m/s^2) of the earth
l=1//length(in m) of the string

//calculation
//at height R
//gdash = G*M/(R+R)^2 = g/4
gdash=g/4
T=2*%pi*sqrt(l/gdash)//time period

printf('The time period of small oscillations is %d s',T)
