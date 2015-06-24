//LTi Systems characterized by Linear Constant
//fourier analysis of discrete systems
//Inverse Z Transform
//z = %z;
syms n z;
H1 = (-5/3)/(z-0.5);
H2 = (8/3)/(z-0.8);
F1 = H1*z^(n)*(z-0.5);
F2 = H2*z^(n)*(z-0.8);
h1 = limit(F1,z,0.5);
disp(h1,'h1[n]=')
h2 = limit(F2,z,0.8);
disp(h2,'h2[n]=')
h = h1-h2;
disp(h,'h[n]=') 