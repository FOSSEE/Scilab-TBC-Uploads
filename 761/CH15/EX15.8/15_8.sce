clc;
//page no 537
//prob no. 15.8
//A Tx statn with fc=11.6MHz & angle of incidence=70 degree
theta_i=70;fc=11.6;//in MHz
//determination of max usable freq(MUF)
MUF=fc/(cosd(theta_i));
disp('MHz',MUF,'The max usable freq MUF is');