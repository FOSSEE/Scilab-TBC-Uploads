//example 3.8
// this program needs kmap.sci and noof.sci
clc;
disp('      C''D''  C''D  CD  CD''');//displaying the given kmap
disp('A''B''    0    0    0   0');
disp('A''B     0    0    1   0');
disp('AB      x    x    x   x');
disp('AB''     0    0    x   x');
k=[0 0 0 0;0 0 1 0;0 0 1 0;0 0 0 0];
disp('In a Karnaugh map if don''t care condition exits, we may consider them as ones if that gives a larger group size.');
disp('The minimal expression from the given kmap is ');
kmap(k); //calling the kamp function