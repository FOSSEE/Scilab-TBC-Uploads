//Caption:Calculate (i)-possible modes,(ii)-cut-off frequencies,(iii)-guide wavelength
//Exa:4.9
clc;
clear;
close;
//For TE mode:
a=2.5;//in cm
b=1;//in cm
f=8.6*10^9;//in Hz
c=3*10^10;//in cm/s
wl_o=c/f;
wl_c_1=2*b;//for TE01
wl_c_2=2*a;//for TE10
disp( 'Only TE10 mode is possible');
f_c=c/wl_c_2;
wl_c_3=2*a*b/sqrt(a^2+b^2);//for TE11 & TM11
wl_g_TE10=wl_o/(sqrt(1-(wl_o/wl_c_2)^2));//for TE10
disp(f_c,'Cut-off frequency(in Hz) =');
disp(wl_g_TE10,'Guide wavelength for TE10 (in cm) =');
//For TM mode:
disp('TM11 also propagates');
wl_c_TM11=wl_c_3;
wl_g_TM11=wl_o/(sqrt(1-(wl_o/wl_c_2)^2));//for TM11
disp(wl_g_TM11,'Guide wavelength for TM11 (in cm) =');
