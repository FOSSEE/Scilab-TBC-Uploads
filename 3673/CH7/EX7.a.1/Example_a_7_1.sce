//Example_a_7_1 page no:269
clc;
R=2;
C=-2*%i;
L1=8*%i;
L2=6*%i;
V=5/(0.5+(1/L1)+(1/(4*%i)));
Vmag=sqrt(real(V)^2+imag(V)^2);
Vang=atand(imag(V)/real(V));
Vabmag=Vmag*6/4;
Vabang=Vang;
disp(Vabmag,"the magnitude of voltage across AB is (in V)");
disp(Vabang,"the angle of voltage across AB is (in degree)");
Iamag=Vmag/2;
Iaang=Vang-(-90);
disp(Iamag,"the magnitude of short circuited current through terminals AB is (in A)");
disp(Iaang,"the angle of short circuited current through terminals AB is (in degree)");
