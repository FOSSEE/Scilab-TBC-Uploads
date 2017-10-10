//Example 9_17 page no:373
clc;
Vl=440;//line voltage
Vrnmag=254;//phase voltage
Vrnang=0;
Vynmag=254;
Vynang=-120;
Vbnmag=254;
Vbnang=-240;
Zmag=25;
Zang=53.13;
//calculating the phase current
Irmag=Vrnmag/Zmag;
Irang=Vrnang-Zang;
Iymag=Vynmag/Zmag;
Iyang=Vynang-Zang;
Ibmag=Vbnmag/Zmag;
Ibang=Vbnang-Zang;
disp(Irmag,"the magnitude of Ir is (in I)");
disp(Irang,"the angle of Ir is (in degree)");
disp(Iymag,"the magnitude of Iy is (in I)");
disp(Iyang,"the angle of Iy is (in degree)");
disp(Ibmag,"the magnitude of Ib is (in I)");
disp(Ibang,"the angle of Ib is (in degree)");
P=sqrt(3)*Vl*Irmag*cosd(53.13);
disp(P,"the power absorbed by the load is (in W)");
