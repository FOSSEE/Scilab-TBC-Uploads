// Example 6-2
// Root Locus

clear; clc;
xdel(winsid());  //close all windows

s = %s;
H = syslin('c',s + 2, s^2 + 2*s + 3);

evans(H,10);
xgrid();
a = gca();
a.box = "on";
a.data_bounds = [-6 -3; 2 3];
a.children(1).visible = 'off';
xtitle('Root locus of G(s) = (s + 2)/ (s^2 + 2*s + 3)');
