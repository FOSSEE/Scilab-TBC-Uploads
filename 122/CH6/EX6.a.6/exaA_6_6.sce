// Example A-6-6
// Root locus

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");

s = %s;
G = syslin('c',1,s * (s + 1) * (s^2 + 4*s + 13));
rootl(G,[-6 -5; 6 5],'Root locus plot for 1/ [s * (s + 1) * (s^2 + 4*s + 13]');

// the same method may be employed to plot root loci in examples
// A-6-1,2,3,8,10,
// simply write the transfer function and choose suitable range
// [xmin ymin; xmax ymax]