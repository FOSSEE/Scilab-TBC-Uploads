clear; clc; close;

Vi = 25*10^(-3);
Acl = 30;
SR = 0.5*10^6;//convertin from us to s 

K = Acl*Vi;
fmax = SR/(2*%pi*K);

disp(fmax,'Maximum frequency(Hertz) = ');

