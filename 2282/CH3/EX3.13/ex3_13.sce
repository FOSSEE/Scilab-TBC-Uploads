// Example 3.13, page no-102
clear
clc


da=38000                // slant range of satellite A
db=36000                // slant range of satellite B
beeta=60                // difference between longitudes of two satellites
R=42164                 // radius of the orbit of satellites


theta=(da^2+db^2-2*(R^2)*(1-cosd(beeta)))/(2*da*db)
theta=(180/%pi)*acos(theta)

d=sqrt(2*(R^2)*(1-cosd(beeta)))
printf("Angular spacing between two satellites viewed by earth station is,\n theta= %.1f°",theta)
printf("\nInter-satellite distance , d=%.0fkm",d)
