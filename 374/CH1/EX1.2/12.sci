//Chapter 1 Example2//
//refractive index of air=na,acceptance angle=a,numerical aperture=NA//
clc;
clear;
NA=0.3;
a=asind(NA);
printf("\n a) acceptance angle=%f\n",a);
//direction of screw rays=s,acceptance angle of screw rays=as//
s=45;
as=(asind(NA))/(cosd(s));
printf("\n b) acceptance angle of screw rays=%f\n",as);
