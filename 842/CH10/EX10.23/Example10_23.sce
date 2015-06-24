//clear//
//Example10.23:Inverse Z Transform H(z) =z/z-a
//z = %z;
syms n z;
a = 2;
H = z/(z-a);
F = H*z^(n-1)*(z-a);
h = limit(F,z,a);
disp(h,'h[n]=')
