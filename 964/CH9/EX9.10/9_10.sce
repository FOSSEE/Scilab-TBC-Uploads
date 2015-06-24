//clc()
//2*x1 + 10000*x2 = 10000
//x1 + x2 = 2
x1 = 1;
x2 = 1;
disp("without scaling, applying forward elimination")
//x1 is too small and can be neglected
x21 = 10000/10000;
x11 = 0;
e1 = (x1 - x11)*100/x1;
disp(x21,"x2 = ")
disp(x11,"x1 = ")
disp(e1,"error for x1 = ")
disp("with scaling")
//0.00002*x1 + x2 = 1
//now x1 is neglected because of the co efficient
x22 = 1;
x12 = 2 - x1;
disp(x12,"x1 = ")
disp(x22,"x2 = ")
//using original co efficient
//x1 can be neglected
disp("pivot and retaining original coefficients")
x22 = 10000/10000;
x12 = 2 - x1;
disp(x12,"x1 = ")
disp(x22,"x2 = ")
