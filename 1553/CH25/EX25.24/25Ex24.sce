//Ch25_Ex24
clc;
clear;
close;
r1=12; h1=50; r2=10;
vol=(1/3)*(22/7)*r1^2*h1;
h2=vol/((22/7)*r2^2);
mprintf("The height to which liquid rises in cylindrical vessel is %.0f cm",h2);
