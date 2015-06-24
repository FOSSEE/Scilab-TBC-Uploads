//clc()
//f(x) = 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5
// for using three point gauss legendre formulae, the intervals have to be changed to -1 and 1
//therefore, x = 0.4 + 0.4 * xd
//thus the integral is transferred to 
//(0.2 + 25*(0.4+0.4*x) - 200*(0.4 + 0.4*x)^2 + 675*(0.4 + 0.4*x)^3 - 900*(0.4 + 0.4*x)^4 + 400*(0.4 + 0.4*x)^5)*0.4
//for three point gauss legendre formulae
x1 = -0.7745967;
x2 = 0;
x3 = 0.7745967;
c0 = 0.5555556;
c1 = 0.8888889;
c2 = 0.5555556;
I1 = (0.2 + 25*(0.4+0.4*x1) - 200*(0.4 + 0.4*x1)^2 + 675*(0.4 + 0.4*x1)^3 - 900*(0.4 + 0.4*x1)^4 + 400*(0.4 + 0.4*x1)^5)*0.4;
I2 = (0.2 + 25*(0.4+0.4*x2) - 200*(0.4 + 0.4*x2)^2 + 675*(0.4 + 0.4*x2)^3 - 900*(0.4 + 0.4*x2)^4 + 400*(0.4 + 0.4*x2)^5)*0.4;
I3 = (0.2 + 25*(0.4+0.4*x3) - 200*(0.4 + 0.4*x3)^2 + 675*(0.4 + 0.4*x3)^3 - 900*(0.4 + 0.4*x3)^4 + 400*(0.4 + 0.4*x3)^5)*0.4;
I = c0 * I1 + c1 * I2 + c2 * I3;
disp(I,"integral obtained using three point gauss legendre formulae = ")
