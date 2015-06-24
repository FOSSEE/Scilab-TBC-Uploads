clc;
//page no 772
//prob no. 20.4.1
//Refer example 20.4.1
n1=1.55;del=0.0258;l=12.5;z=1000;c=3*10^8;
//a)Determination of intermodal dispersion
del_per_km=(n1*z*del)/((1-del)*c);
disp('s/km',del_per_km,'the intermodal dispersion is');
//b)Determination of intermodal dispersion for l=12.5
del_l=del_per_km*l/1000;
disp('s',del_l,'the intermodal dispertion for l=12.5 is');