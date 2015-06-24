//Ex 3.6
clc;
clear;
close;
format('v',5);
SR=2;//V/micro second
delta_Vin=0.8;//V
delta_t=10;//micro second
Acl_max=SR/(delta_Vin/delta_t);//unitless
disp(Acl_max,"Maximum close loop voltage gain is");
