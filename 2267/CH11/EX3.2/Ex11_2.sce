//Part B Chapter 3 Example 2
clc;
clear;
close;
format('v',6);
BC=25;//mm
AB=125;//mm
AF=85;//mm
EF=25;//mm
A_GBCD=BC*(AB-EF);//mm^2
A_GEFA=AF*EF;//mm^2
//Distance of CG from AF
ybar=((A_GBCD*(AB-2*EF)+A_GEFA*EF/2)/(A_GBCD+A_GEFA));//mm
//Distance of CG from AB
xbar=((A_GBCD*(BC/2)+A_GEFA*AF/2)/(A_GBCD+A_GEFA));//mm
disp(ybar,"From reference axes AF, centroid is(mm) :   ");
disp(xbar,"From reference axes AB, centroid is(mm) :   ");
