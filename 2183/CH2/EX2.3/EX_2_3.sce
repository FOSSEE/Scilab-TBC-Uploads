// Example 2.3:Numerical Aperture ,Acceptance Angle and criticle angke
clc; 
clear;
close;
n1=1.46;//core Refractive Index
d=1;// refractive index differnce in percentage
NA=n1*(sqrt(2*(d/100)));// Numerical Aperture
Sa= %pi*(NA)^2;//solid accepance angle in strad
r=1-(d/100);//ratio of refractive index
Oc=asind(r);//criticle angle in degree
oc=floor(Oc);//
x=Oc-oc;//
disp(NA,"numerical aperture is")
disp(Sa,"solid acceptance angle in air in stard is")
disp("CRITICAL ANGLE IS "+string(oc)+" DEGREE AND "+string(round((60*(x))))+" MINUTES ")


