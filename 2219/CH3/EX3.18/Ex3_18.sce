// Chapter 3 example 18
//------------------------------------------------------------------------------
clc;
clear;
// let 'a' and 'b' be the broad and narrow dimensions of the rectangular guide and 'r' be internal radius of circular guide
// Dominant mode in rectangular guide =TE10
// cutoff wavelength = 2a
// dominant mode in circular guide = TE11
// cut-off wavelength = 2*pi*r/1.841  = 3.41r
// for the two cut-off wavelengths to equal
// 2a  = 3.41r
// a = 1.705r
// now area of cross section of rectangular guide = a*b
//assuming a= 2b,which is very reasonable assumption ,we get 
// area of cross section of rectangular waveguide = a*a/2 = ((1.705^2)*r*r)/2 = 1.453r^2
// area of cross-section of circular guide = pi*r*r = 3.14r^2
// ratio of two cross sectional areas = (3.14r^2)/(1.453r^2) = 2.16
mprintf('Circular guide is 2.16 times larger in cross section as compared to rectangular guide');
//------------------------------------------------------------------------------
