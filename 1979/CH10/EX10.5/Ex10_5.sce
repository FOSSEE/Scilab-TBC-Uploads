//chapter-10 page 487 example 10.5
//==============================================================================
clc;
clear;

x1=35855;//Distance between geostationary orbit to surface of earth in km
x2=6371;//Distance between center of earth to surface of earth in km

//CALCULATION
x=x1+x2;//distance of satellite from center of earth in km
y=x2*(%pi);//Circumference of half circle arc in km
b=y/x;//Beam angle in rad
Bdeg=(b*180)/(%pi);//Beam angle in deg

//OUTPUT
mprintf('\nAntenna Beam angle required by a satellite antenna to provide full global coverage from a geostationary orbit is Bdeg=%2.2f deg',Bdeg);

//=========================END OF PROGRAM=============================== 
