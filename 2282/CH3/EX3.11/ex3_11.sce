// Example 3.11, page no-99
clear
clc

theta_l=30          //earth station's location 30°W longitude
theta_s=50          //satellite's location 50°W longitude
theta_L=60          //earth station's location 60°N latitude
r=42164             // orbital radius of the satellite in km
R=6378              //Earth's radius in km

A_dash=atan((tand(theta_s-theta_l))/sind(60))
A_dash=A_dash*180/%pi
A=180+A_dash         //Azimuth angle

x=(180/%pi)*acos(cosd(theta_s-theta_l)*cosd(theta_L))
y=r-ceil(R*(cosd(theta_s-theta_l)*cosd(theta_L)))
z=R*sind(x)
E=(atan(y/z)*180/%pi)-x
printf("Azimuth  angle =%.1f°\n Elevation angle =%.1f°",A,E)
