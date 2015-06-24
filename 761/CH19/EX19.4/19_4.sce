clc;
// page no 709
// prob no 19.4
// A RGB video signal has normalized values as
R=0.2;G=0.4;B=0.8;
//The luminance signal is given as
Y=0.30*R+0.59*G+0.11*B;
disp(Y,'The luminance signal is');
//The in-phase component of the color signal is given as
I=0.60*R-0.28*G-0.32*B;
disp(I,'The in-phase component of the color signal is');
//The quadrature component of the color signal is given as
Q=0.21*R-0.52*G+0.31*B;
disp(Q,'The quadrature component of the color signal is');