//LTi Systems characterized by Linear Constant
//Coefficient Difference equations
//Inverse Z Transform
//z = %z;
syms n z;
H1 = (26/15)/(z-(1/2));
H2 = (7/3)/(z-2);
H3 = (18/5)/(z-3);
F1 = H1*z^(n)*(z-(1/2));
F2 = H2*z^(n)*(z-2);
F3 = H3*z^(n)*(z-3);
h1 = limit(F1,z,1/2);
disp(h1,'h1[n]=')
h2 = limit(F2,z,2);
disp(h2,'h2[n]=')
h3 = limit(F3,z,3);
disp(h3,'h3[n]=')
h = h1-h2+h3;
disp(h,'h[n]=') 