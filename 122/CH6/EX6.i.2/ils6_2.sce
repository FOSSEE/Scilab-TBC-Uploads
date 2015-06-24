// Illustration 6.2
// Orthogonality of constant gain curves and root locus
// and the root locus

// Section6.3  Figure 6-29 in the book

clear; clc;
xdel(winsid());  //close all windows

// please set the path
// cd "/<your code directory>/"
// exec("rootl.sci");

s = %s;
P = 1 /( s * (s + 1) * (s + 2) );
G = syslin('c',P);

rootl(G,[ -6 -6; 6 6 ],'Orthogonality of root locus and constant gain curves');

P = 1 / P;
v = -6:0.1:6;
[X,Y] = ndgrid(v,v); // prepares a grid to compute the gain
S = X + %i * Y;
K = abs(horner(P,S)) ; // Gain evaluated over the grid

contour(v,v,K,10);  // plot lines of constant gain


