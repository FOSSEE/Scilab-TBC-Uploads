clear;
clc;
disp("--------------Example 16.2---------------")
C=1/100;
orbit=35786; // 35,786 km
radius_earth = 6378; // 6378 km
distance=orbit+radius_earth ;//  total distance in km
Period=C*((distance)^1.5); //formula
hour=round(Period/3600); // 1 hour = 60*60=3600 seconds
printf("According to Keplers law, the period of the satellite is %d s or %d hours.",floor(Period),hour);
printf("\nThis means that a satellite located at %d km has a period of %d h, which is the same as the rotation period of the Earth.\nA satellite like this is said to be stationary to the Earth. The orbit is called a geosynchronous orbit.",orbit,hour);
