//clear//
//Caption:Program to  Calcualte Optical Power Emitted from the Light source and Optical power coupled to step-index fiber
//Example5.2
//page194
clear;
close;
clc;
rs = 35e-06;//the source radius in meter
a = 25e-06; //the  core radii of step-index fiber meter
NA = 0.20; //the numerical aperture value
Bo = 150e04;// radiance in W/square meter.sr
Ps = ((%pi^2)*(rs^2))*Bo;//power emitted by the source
if (rs <=a) then
  PLED_step = Ps*(NA^2);
elseif (rs>a) then
  PLED_step = (((a/rs)^2)*Ps)*(NA^2);
end
disp(Ps,'Optical power emitted by LED light source Ps =')
disp(PLED_step,'Optical Power coupled into step index fiber in Watts PLED_step =');
//RESULT
//Optical power emitted by LED light source Ps = 0.0181354  
//Optical Power coupled into step index fiber in Watts PLED_step =   0.0003701  
