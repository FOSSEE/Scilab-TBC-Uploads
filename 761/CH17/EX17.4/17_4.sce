clc;
//page no 627
//prob no. 17.4
//Determination of phase velo.with given 5GHz freq
f=5*10^9;c=3*10^8;fc=3.75*10^9;//Cut-off freq refering eg.17.1
vp=c/sqrt(1-(fc/f)^2);//Calculation of phase velo.
disp('m/s',vp,'The phase velo is');