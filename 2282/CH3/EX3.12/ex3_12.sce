// Example 3.12, page no-100
clear
clc

theta_l=60          //earth station's location 60°W longitude
theta_s=105          //satellite's location 105°W longitude
theta_L=30          //earth station's location 30°N latitude

theta_l1=90          //earth station's location 90°W longitude
theta_s1=105          //satellite's location 105°W longitude
theta_L1=45          //earth station's location 45°N latitude

c=3*10^8             //speed of light
r=42164             // orbital radius of the satellite in km
R=6378              //Earth's radius in km

x=(180/%pi)*acos(cosd(theta_s-theta_l)*cosd(theta_L))
y=r-ceil(R*(cosd(theta_s-theta_l)*cosd(theta_L)))
z=R*sind(x)
E=(atan(y/z)*180/%pi)-x

x1=(180/%pi)*acos(cosd(theta_s1-theta_l1)*cosd(theta_L1))
y1=r-ceil(R*(cosd(theta_s1-theta_l1)*cosd(theta_L1)))
z1=R*sind(x1)
E1=(atan(y1/z1)*180/%pi)-x1
E1=floor(E1)

//calculation of slant range dx
k=(R/r)*cosd(E)
k=(180/%pi)*asin(k)
k=k+E
k=sind(k)
k=ceil(k*1000)/1000
//k=k+E
//k=sin(k)
dx=(R)^2+(r)^2-(2*r*R*k)
dx=sqrt(dx)


//calculation of slant range dy
k1=(R/r)*cosd(E1)
k1=(180/%pi)*asin(k1)
k1=k1+E1
k1=floor(k1)
k1=sind(k1)
k1=ceil(k1*1000)/1000
dy=(R)^2+(r)^2-(2*r*R*k1)
dy=sqrt(dy)

tr=dy+dx
delay=tr*10^6/c
x=50
td=delay+x

printf("Elevation angle, Ex =%.1f°",E)
printf("\n Elevation angle, Ey =%.1f°",floor(E1))
printf("\n Slant range dx of the earth station X is dx=%.2fkm",dx)
printf("\n Slant range dy of the earth station Y is dy=%.1fkm",dy)
printf("\n Therefore, total range to be covered is %.2fkm",tr)
printf("\n propagation delay=%.2fms",delay)
printf("\n\n Time required too transmit 500 kbs of information at \n a transmisssion speed of 10Mbps is given by 500000/10^7=%.0fms",500000000/10^7)
printf("\n\n Total Delay= %.2fms",td)
