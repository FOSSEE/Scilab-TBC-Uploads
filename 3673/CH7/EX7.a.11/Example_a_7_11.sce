//Example_a_7_11 page no:278
clc;
Zab=((%i*3)*(%i*-2))/((%i*3)-(%i*2));
In=((10/3*%i)+(5*%i/-2*%i));
Il=-(In*Zab)/(5-6*%i);
Ilmag=sqrt(real(Il)^2+imag(Il)^2);
Ilang=atand(imag(Il)/real(Il));
Ilang=Ilang-180;//converting the angle to negative hence value does not change
disp(Ilmag,"the magnitude of load current is (in A)");
disp(Ilang,"the angle of load current is (in degree)");
