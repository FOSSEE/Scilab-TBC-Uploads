//clc()
//f(x,y) = dy/dx = -2*x^3 + 12*x^2 - 20*x + 8.5
//f'(x,y) = -6*x^2 + 24*x - 20
//f"(x,y) = -12*x + 24
//f"'(x,y) = -12
x = 0;
Et2 = (-6*x^2 + 24*x - 20) * 0.5^2 / 2;
Et3 = (-12*x + 24) * (0.5)^3 / 6;
Et4 = (-12) *(0.5 ^ 4) / 24;
Et = Et2 + Et3 + Et4;
disp(Et,"Total truncation error =")
