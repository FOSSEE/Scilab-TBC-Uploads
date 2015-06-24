//clc()
//f(x) = 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5
// for using two point gauss legendre formulae, the intervals have to be changed to -1 and 1
//therefore, x = 0.4 + 0.4 * xd
//thus the integral is transferred to 
//(0.2 + 25*(0.4+0.4*x) - 200*(0.4 + 0.4*x)^2 + 675*(0.4 + 0.4*x)^3 - 900*(0.4 + 0.4*x)^4 + 400*(0.4 + 0.4*x)^5)*0.4
//for three point gauss legendre formulae
x1 = -(1/3) ^ 0.5;
x2 = (1/3) ^ 0.5;
I1 = (0.2 + 25*(0.4+0.4*x1) - 200*(0.4 + 0.4*x1)^2 + 675*(0.4 + 0.4*x1)^3 - 900*(0.4 + 0.4*x1)^4 + 400*(0.4 + 0.4*x1)^5)*0.4;
I2 = (0.2 + 25*(0.4+0.4*x2) - 200*(0.4 + 0.4*x2)^2 + 675*(0.4 + 0.4*x2)^3 - 900*(0.4 + 0.4*x2)^4 + 400*(0.4 + 0.4*x2)^5)*0.4;
I = I1 + I2;
disp(I,"Integral obtained using gauss legendre formulae =")
t = 1.640533;
e = (t - I)*100/t;
disp("%",e,"error = ")
