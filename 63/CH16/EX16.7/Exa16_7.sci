//Determine the lowest three blind speeds of this radar

vc = 3e+8;
f = 5e+9;
PRF = 800;
n = 1;

lambda = vc/f;

vb = PRF*n*lambda;
vb1 = vb*60*60*1e-3;
vb2 = vb1*2;
vb3 = vb1*3;

disp(vb3, vb2, vb1,  'The lowest three blind speeds of this radar are (in Km/h)')