disp("The plane illustrated in Fig. 1-5 has intercepts at 2a, 4b and lc along the three crystal axes. Taking the reciprocals of these intercepts, we get 1/4, 1/2,and 1. These three fractions have the same relationship to each other as the integers 2,1, and 4 (obtained by multiplying each fraction by 4).Thus the plane can be referred to as a (214) plane. The only exception is if the intercept is a fraction of the lattice constant a. In that case, we do not reduce it to the lowest set of integers.")
x = 0:0.05:2;
y = 0:0.1:4;
a=2;
b=4;
c=1;
deff('[z]=fs(x,y)','z = (1-(0.5*x)-(0.25*y))');
//z = (1-(0.5*x)-(0.25*y));
fplot3d(x,y,fs);

