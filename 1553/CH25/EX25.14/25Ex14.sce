//chapter 25 Ex 14
clc;
clear;
close;
d=7;    //given diameter
r=d/2;
h=40;   //given height
vol=(22/7)*r^2*h; 
curved_area=2*(22/7)*r*h;
Total_area=(2*(22/7)*r*h)+(2*(22/7)*r^2);
printf("Volume= %d cubic cm\n Curved Surface area= %d square cm\n Total surface area= %d square cm",vol,curved_area,Total_area);
