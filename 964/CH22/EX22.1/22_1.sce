//clc()
h = [0.8,0.4,0.2];
I = [0.1728,1.0688,1.4848];
E = [89.5,34.9,9.5];
I1 = 4 * I(2) / 3 - I(1) / 3;
t = 1.640533;
et1 = t - I1 ;
Et1 = et1 * 100/t;
disp("%",Et1,"Error of the improved integral for segment 1 and 2 = ")
I2 = 4 * I(3) / 3 - I(2) / 3;
et2 = t - I2 ;
Et2 = et2 * 100/t;
disp("%",Et2,"Error of the improved integral for segment 4 and 2 = ")

