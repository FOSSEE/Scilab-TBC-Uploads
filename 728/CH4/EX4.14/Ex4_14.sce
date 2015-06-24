//Caption:Calculate (i)-guide wavelength,(ii)-phase constant,(iii)-phase velocity for dominant mode
//Exa:4.14
clc;
clear;
close;
c=3*10^10;//in cm/s
a=5;//in cm
b=2.5;//in cm
wl_o=4.5;//in cm
//For TE10 mode:
wl_c=2*a;
wl_g=wl_o/sqrt(1-(wl_o/wl_c)^2);
V_p=c/sqrt(1-(wl_o/wl_c)^2);
w=2*%pi*c/wl_o;
w_c=2*%pi*c/wl_c;
b=sqrt(w^2-w_c^2)/c;
disp(wl_g,'Guide wavelength (in cm) =');
disp(b,'Phase constant =');
disp(V_p,'Phase velocity (in cm/s) =');

//answer in book is wrongly written as guide wavelength =7.803 cm
//answer in book is wrongly written as Phase velocity = 5.22*10^10 cm/s