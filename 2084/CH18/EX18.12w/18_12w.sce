//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.12w
//calculation of position of final image formed due to a system of glass slab and a concave mirror

//given data
u=-21; //object distance(in cm) from concave mirror
R=20; //radius of curvature(in cm) of the concave mirror
mu=1.5; //refractive index of the glass'
t=3; //thickness of glass slab(in cm)

//calculation
tshift=t*(1-1/mu); //snell's law
img_pos=-u-tshift; //image position with respect to glass slab,i.e object distance(in cm) of concave mirror

if(img_pos==R)
    disp('here img_pos is same as radius of curvature of concave mirror and thus final image is formed at P itself');
 
