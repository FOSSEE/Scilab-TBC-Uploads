clear;
clc;
f = 8;//tons/in^2
E = 12800;// tons/in^2
k1 = 1/480;//central deflection = k = delta/l
k2 = (5/24)*(f/E)/k1 ;//k2 = d/l =  deapth to span ratio
printf('The ratio of deapth to span, d/l = %f ',k2);
