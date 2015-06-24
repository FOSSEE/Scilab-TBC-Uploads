clear
clc
disp('Ex-4.3')
delt=1;              //consider time interval of 1 sec
delw=1/delt;        // since delw*delt =1 from equation 4.4
delf=0.01          //calculated accuracy is 0.01Hz
delwc =2*%pi*delf // delwc-claimed accuracy from w=2*pi*f
printf('The minimum uncertainity calculated is 1rad/sec. The claimed accuracy is %.3f rad/sec\n',delwc);
if delw==delwc then disp('Valid claim');
end
if delw~=delwc then disp('Invalid claim');
end
