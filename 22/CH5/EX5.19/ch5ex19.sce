//LTi Systems characterized by Linear Constant
//Coefficient Difference equations
//Inverse Z Transform
//z = %z;
syms n z;
H1 = -z/(z-0.5);
H2 = (8/3)*z/(z-0.8);
H3=(-8/3)*z/(z-2);
F1 = H1*z^(n-1)*(z-0.5);
F2 = H2*z^(n-1)*(z-0.8);
F3 = H3*z^(n-1)*(z-2);
h1 = limit(F1,z,0.5);
disp(h1,'h1[n]=')
h2 = limit(F2,z,0.8);
disp(h2,'h2[n]=')
h3 = limit(F3,z,2);
disp(h3,'h3[n]=')
h = h1+h2+h3;
disp(h,'h[n]=')
