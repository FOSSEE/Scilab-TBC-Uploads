
//To Calculate the Time Elapsed between Door Openings

//Example 47.3

clear;

clc;

c=3*10^8;//Speed of Light in m/s

v=0.8*c;//Speed of Train T1 in m/s

y=1/sqrt(1-(v/c)^2);//Speed of Box in the frame of T1 in m/s

rl=30*c;//Rest Length of the box in metres

t=(rl*v*y)/(c^2);//Time elapsed between the openings of the Door in seconds

printf("Time elapsed between the openings of the Door = %.0f s",t);
