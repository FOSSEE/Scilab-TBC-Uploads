// At 0.1Mpa, 110 degree
h2 = 2696.2; hf = 844.89; hfg = 1947.3;
x2 = (h2-hf)/hfg;
vf = 0.001023; // at T = 70 degree
V = 0.000150; // In m3
m1 = V/vf;
m2 = 3.24;
x1 = (x2*m2)/(m1+m2);
disp(x1,"The quality of the steam in the pipe line is")