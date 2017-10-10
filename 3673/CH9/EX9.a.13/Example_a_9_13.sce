//Example_a_9_13 page no:414
clc;
//equation with unknown variable cannot be solved in scilab therefore taking the simplified equation
E1=124.52-(%i*165.08);
E2=1.5-(%i*0.866);
V=E1/E2;
Vromag=100;
Vroang=-10;
Vroreal=Vromag*cosd(Vroang);
Vroimag=Vromag*sind(Vroang);
Vro=Vroreal+(%i*Vroimag);
Vo_o=V-Vro;
Vo_omag=sqrt(real(Vo_o)^2+imag(Vo_o)^2);
Vo_oang=atand(imag(Vo_o)/real(Vo_o));
disp(Vo_omag,"the magnitude of voltage between O"'O is (in V)");
disp(Vo_oang,"the angle of voltage between O"'O is (in degree)");
