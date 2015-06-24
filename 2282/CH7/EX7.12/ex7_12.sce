//Example 7.12, Page no.280
clear 
clc

theeta=5  //Angle form by slant ranges of two satellites
dA=42100*10^3  //Slant range of satellite A
dB=42000*10^3  //Slant range of satellite B
r=42164*10^3   //radius of geostationary orbit
beeta=((dA^2+dB^2-cosd(theeta)*2*dA*dB)/(2*r^2))
beeta=ceil(beeta*10^3)/10^3
beeta=(180/%pi)*acos(1-beeta)
printf("Longitudinal separation between two satellites is %.3f°",beeta)
