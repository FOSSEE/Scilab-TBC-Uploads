//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.11
//calculation of velocity of the raindrops with respect to the man

//given data
vmanstreet=3//velocity(in km/h) of man with respect to the street
vrainstreet=4//velocity(in km/h) of rain with respect to the street

//calculation
vrainman=sqrt((vrainstreet*vrainstreet)+(vmanstreet*vmanstreet));//velocity(in km/h) of rain with respect to the man
theta=atand(vmanstreet/vrainstreet);//angle(in degree) made by rain drops with Y axis

printf('velocity of the raindrops with respect to the man is %3.2f km/h and angle made by rain drops with Y axis is %3.3f degree',vrainman,theta)
