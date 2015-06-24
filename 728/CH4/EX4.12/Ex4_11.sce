//Caption:Find all modes that can propagate at 5000MHz.
//Exa:4_11
clc;
clear;
close;
a=4;//in cm
b=3;//in cm 
f=5*10^9;//in Hz
c=3*10^10;//in cm/s
wl_o=c/f;
//For TE waves:
wl_c_TE01=2*b;//for TE01
wl_c_TE10=2*a;//for TE10
wl_c_TE11=2*a*b/sqrt(a^2+b^2);//for TE11
if(wl_c_TE01>wl_o)
    disp('TE01 can propagate');
else
    disp('TE01 cannot propagate');
end
if(wl_c_TE10>wl_o)
    disp('TE10 can propagate');
else
    disp('TE10 cannot propagate');
end
if(wl_c_TE11>wl_o)
    disp('TE11 can propagate');
else
    disp('TE11 cannot propagate');
end