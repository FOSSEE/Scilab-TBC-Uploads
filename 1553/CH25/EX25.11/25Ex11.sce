//Chapter 25 Ex 11

clc;
close;
clear;
scube1=1; scube2=6; scube3=8;     //all in centimeter
vol1=(scube1)^3;
vol2=(scube2)^3;
vol3=(scube3)^3;
volnew=vol1+vol2+vol3;
newedge=nthroot(volnew,3);
facearea=(newedge)^2;
surarea=6*facearea;
mprintf("The surface area of the new cube is %.0f square centimeters",surarea);
