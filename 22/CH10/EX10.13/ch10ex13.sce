//LTi Systems characterized by Linear Constant
//Inverse Z Transform
//z = %z;
syms n z;
H1 = (-2*z)/(z-(1/3));
H2 = (3*z)/(z-0.5);
H3 = (24*z)/(z-1);
F1 = H1*z^(n-1)*(z-(1/3));
F2 = H2*z^(n-1)*(z-0.5);
F3 = H3*z^(n-1)*(z-1);
h1 = limit(F1,z,(1/3));
disp(h1,'h1[n]=')
h2 = limit(F2,z,0.5);
disp(h2,'h2[n]=')
h3 = limit(F3,z,1);
disp(h3,'h3[n]=')
h = h1+h2+h3;
disp(h,'h[n]=') 