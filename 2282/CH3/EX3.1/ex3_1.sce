// Example 3.1, page no-72
clear
clc

Az=85      // Azimuth angle of injection point
l=5.2      // latitude of launch site
cosi=sin(Az*%pi/180)*cos(l*%pi/180)
i=acos(cosi)
i=i*180/%pi
printf("Inclination angle attained, i=%.1f°",i)
