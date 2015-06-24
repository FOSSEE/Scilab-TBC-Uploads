//Ex:83
clc;
clear;
close;
dx=1*(%pi/180);//azimuth beamwidth in rad
G=315507;
dy=(4*%pi*180)/(G*dx*%pi);//the width in degree
printf("The width=%f degree",dy);