//Example_a_5_12 page no:213
clc;
V=100+(%i*0);
Za=10+(%i*8);
Zb=9-(%i*6);
Zc=3+(%i*2);
Zp=(Za*Zb)/(Za+Zb);
Zt=Zp+Zc;
It=V/Zt;
Ia=It*Zb/(Za+Zb);
Ib=It*Za/(Za+Zb);
Iamag=sqrt(real(Ia)^2+imag(Ia)^2);
Iaang=atand(imag(Ia)/real(Ia));
Ibmag=sqrt(real(Ib)^2+imag(Ib)^2);
Ibang=atand(imag(Ib)/real(Ib));
theta=-Iaang+Ibang;//here negative sign is used only to find the phase difference between them
disp(Iamag,"the magnitude of current in branch A is (in A)");
disp(Iaang,"the angel of current in branch A is (in degree)");
disp(Ibmag,"the magnitude of current in branch B is (in A)");
disp(Ibang,"the angel of current in branch B is (in degree)");
disp(theta,"the angle between Ia and Ib is (in degree)");
