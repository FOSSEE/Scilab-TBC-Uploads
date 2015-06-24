//clear//
//Example10.25:LTi Systems characterized by Linear Constant
//Coefficient Difference equations
//Inverse Z Transform
//z = %z;
syms n z;
H1 = z/(z-(1/2));
H2 = (1/3)/(z-(1/2));
F1 = H1*z^(n-1)*(z-(1/2));
F2 = H2*z^(n-1)*(z-(1/2));
h1 = limit(F1,z,1/2);
disp(h1,'h1[n]=')
h2 = limit(F2,z,1/2);
disp(h2,'h2[n]=')
h = h1+h2;
disp(h,'h[n]=')
//Result
//h[n]=  [(1/2)^n]+[2^(1-n)]/3   
//Which is Equivalent to h[n] =[(1/2)^n]+[(1/2)^(n-1)]/3 
