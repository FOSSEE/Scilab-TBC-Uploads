clear; 
clc;
printf("\n Example 1.1");
//Given size analysis of a powdered material
d=[1,101];//diameter of the powdered particles
x=[0,1];//mass fractions of the particles
plot2d(d,x,style=2,rect=[0,0,120,1])
xtitle("size analysis of powder","particle size(um)","mass fraction(x)")
d=100*x+1; // from the given plot
//calculation of surface mean diameter
function[ds]=surface_mean_diameter(x0,x1)
    ds=1/(integrate('1/(100*x+1)','x',x0,x1))
    funcprot(0)
endfunction
ds=surface_mean_diameter(0,1);//deduced surface mean diameter according to def.
printf("\n The surface mean diameter is %fum",ds);

 