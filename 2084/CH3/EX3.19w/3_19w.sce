//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.19w
//calculation of speed and direction of rain with respect to the road

//given data
vmanroad=8//velocity(in km/h) of the man with respect to the road

//calculation
//from equation of relative velocity   vrainroad = vrainman + vmanroad
//taking horizontal components        vrainroad*sind(aplha)=8                    1
//taking components along line OA     vrainroad*sind(30+alpha)=12*cosd(30)       2
//from   1    and    2

alpha=acotd(sqrt(3)/2);
vrainroad=vmanroad/sind(alpha);//from equation 2

printf('the speed of the rain with respect to the road is %3.2f km/h and makes angle of %3.2f degree with Y axis',vrainroad,alpha);
