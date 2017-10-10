//Ch25_Ex20
clc;
clear;
close;
r=21; h=28;
slantH=sqrt(r^2+h^2); //slant height
vol=(1/3)*(22/7)*r^2*h;
curvedArea=(22/7)*r*slantH;
totalArea=curvedArea+(22/7)*r^2;
mprintf("Slant Height= %.0f cm\n Volume= %.0f cubic cm\n Curved Surface area= %.0f square cm\n Total surface area= %.0f square cm",slantH,vol,curvedArea,totalArea);
