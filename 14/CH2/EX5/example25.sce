//Chapter 2
//Example 2.5 
//Page 34
clear;clc;
pu_Z_given = 0.25;
base_kV_given = 18;
base_kV_new = 20;
base_kVA_new = 100;
base_kVA_given = 500;
X11=(pu_Z_given * (base_kV_given/base_kV_new)^2 * (base_kVA_new/base_kVA_given));
disp('Per-Unit Znew = per-unit Zgiven * (base kVgiven/base kVnew)^2 * (base kVAnew/base kVAgiven)')
disp(' = 0.25 * (18/20)^2 * (100/500)')
printf("\n Per-Unit Znew = %f per unit",X11)