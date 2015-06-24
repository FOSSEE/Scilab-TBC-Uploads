clc;
close();
clear();
//page no 548
//prob no. 17.2
L=37;   //latitude in degree
R=6400;  H=36000;  //from the text
del=atan(R*sin(L*%pi/180)/(H+R*(1-cos(L*%pi/180))))   //Declination angle
mprintf('The ange is %.2f degree\n',del*180/%pi);
