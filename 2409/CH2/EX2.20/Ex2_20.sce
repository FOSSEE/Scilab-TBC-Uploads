
//Variable Declaration

PI=-1280  //I component of range vector for a satellite(km)
PJ=-1278  //J component of range vector for a satellite(km)
PK=66     //K component of range vector for a satellite(km)
GST=240   //GST(degrees)
LE=48.42  //Latitude(Degrees)
PE=-89.26 //Longitude(Degrees)
H=200     //Height above mean sea level(metres)
aE=6378.1414 //Semimajor axis(km)
eE=0.08182   //Eccentricity


//Calculation

l=(aE/sqrt(1-eE**2*sin(LE*3.142/180)**2)+H/1000)*cos(LE*3.142/180)  
z=((aE*(1-eE**2))/sqrt(1-eE**2*sin(LE*3.142/180)**2)+H/1000)*sin(LE*3.142/180)  
SE=(atan(z/l))*180/3.142 //Geocentric latitude angle (degrees)
LST=240+PE


a=sin(SE*3.142/180)*cos(LST*3.142/180)
b=sin(SE*3.142/180)*sin(LST*3.142/180)
c=-cos(SE*3.142/180)
d=-sin(LST*3.142/180)
e=cos(LST*3.142/180)
f=0
g=cos(SE*3.142/180)*cos(LST*3.142/180)
h=cos(SE*3.142/180)*sin(LST*3.142/180)
i=sin(SE*3.142/180)

D = [a,b,c;d,e,f;g,h,i]

P=  [PI;PJ;PK]

R=D*P  //Components of range of earth station
Ro=sqrt(R(1,1)**2+R(2,1)**2+R(3,1)**2) //Magnitude of range of earth station(km)
El=asin(R(3,1)/Ro) //Antenna elevation angle for the earth station(radians) 
El= El*180/3.142   //Converting El to degrees
alpha=(atan(R(2,1)/R(3,1)))*180/3.142

if ( R(1,1)<0 & R(2,1)>0 ) then
   Aza=alpha
else
   Aza=0
end   
if ( R(1,1)>0 & R(2,1)>0 ) then
   Azb=180-alpha
else:
   Azb=0
end
   
if ( R(1,1)>0 & R(2,1)<0 ) then
   Azc=180+alpha
else
   Azc=0
end   
if ( R(1,1)<0 & R(2,1)<0 ) then
   Azd=360-alpha
else
   Azd=0
end   
Az= Aza+Azb+Azc+Azd   //Azimuth angle (degrees)

printf("The magnitude of range of earth station is %.0f km",Ro)
printf("\nThe antenna elevation angle for the earth station are %.f degrees",El)
printf("\nThe Azimuth angle for the earth station is %.2f degrees",Az)
