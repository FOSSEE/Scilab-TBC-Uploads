//Example 2.3
clear;
clc;

//Given
p1=1013.25;//initial pressure in N m^-2
p2=101325;//final pressure in N m^-2
R=8.314;// gas constant in J K^-1 mol^-1
T=300;// temperature in K
n=0.5;//moles of oxygen present

// To determine minimum work required
w=n*R*T* log(p2/p1);// w in joule
mprintf('minimum work required (w) = %f Joule',w);
//end