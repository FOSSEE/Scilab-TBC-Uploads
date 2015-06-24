clear;
clc;
disp("--------------Example 16.1---------------")
C=1/100;
dist_moon=384000; // 384,000 km
radius_earth = 6378; // 6378 km
distance=dist_moon+radius_earth ;//  total distance in km
Period=C*((distance)^1.5); //formula
month=round(Period/2592000); // 1 month = 60*60*24*30=2592000 seconds
printf("The period of the Moon, according to Keplers law is %d s or approximately %d month.",floor(Period),month);

