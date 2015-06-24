clc;
//page no 349
//problem no 10.13.1
del_phi_d=12;f_min=100;del_f_max_allow=15000;
del_phi_rad=(12*%pi)/180;
del_f_max=del_phi_rad*f_min;
//Determination of freq deviation
N=del_f_max_allow/del_f_max;
l=del_f_max*729;//using six tripler
f=0.1*729;
//Determination of signal oscillator signal
fo=152-f;
disp('MHz',fo,'fo is best obtained by using two tripler');