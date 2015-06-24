//Chapter-5 example 1
//=============================================================================
clc;
clear;
//input data
mprintf('mathematically ellipsoid is represented by \n((x/a)^2)+((y/b)^2)+((z/c)^2) = 1\n ');
mprintf('\nThe approximate expression for ellipsoid backscattered RCS is given by\n ');
mprintf('\nσ =(π*a^2 b^2 c^2)/[ a^2 (sinθ)^2 (cosɸ)^2+ b^2 (sinθ)^2 (sinɸ)^2+c^2 (cosθ)^2 ]^2\n');
mprintf('\nif a = b ,the ellipsoid becomes Roll symmetric,above eqn becomes\n');
mprintf('\nσ = (π* b^4 c^2)/[ a^2 (sinθ)^2 + c^2 (cosθ)^2 ]^2\n');

//===============end of the program============================================
