//chapter-10 page 488 example 10.6
//==============================================================================
clc;
clear;

//For a satellite communication system
h=35855;//Distance between geostationary orbit to surface of earth in km
r=6371;//Distance between center of earth to surface of earth in km
a=5;//earth station elevation angle wrt the geostationary satellite in deg
b=5;//angle in deg
c=3*10^5;//Velocity of light in km/sec
b1=90;//angle for vertical transmission in deg
a1=0;

//CALCULATION
d=(sqrt((r+h)^2-(r*cosd(a))^2))-sind(b);//distance in km
T=2*(d/c);//The round trip time between the earth station and the satellite in sec
d1=(sqrt((r+h)^2-(r*cosd(a))^2))-sind(b);//distance in km 
Tv=(2/c)*(d1-r);//The round trip time for vertical transmission between the earth station and the satellite in sec

//OUTPUT
mprintf('\nThe round trip time between the earth station and the satellite is T=%1.3f sec \nThe round trip time for vertical transmission between the earth station and the satellite is Tv=%1.3f sec',T,Tv);

//=========================END OF PROGRAM=============================== 
