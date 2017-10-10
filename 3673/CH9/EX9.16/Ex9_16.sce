//Example 9_16 page no:371
clc;
Vrymag=400;
Vryang=0;
Vybmag=400;
Vybang=-120;
Vbrmag=400;
Vbrang=-240;
Zmag=8.94;
Zang=63.4;
//calculating the phase current
Irmag=Vrymag/Zmag;
Irang=Vryang-Zang;
Iymag=Vybmag/Zmag;
Iyang=Vybang-Zang;
Ibmag=Vbrmag/Zmag;
Ibang=Vbrang-Zang;
disp(Irmag,"the magnitude of Ir phase current is (in A)");
disp(Irang,"the angle of Ir phase current is (in degree)");
disp(Iymag,"the magnitude of Iy phase current is (in A)");
disp(Iyang,"the angle of Iy phase current is (in degree)");
disp(Ibmag,"the magnitude of Ib phase current is (in A)");
disp(Ibang,"the angle of Ib phase current is (in degree)");
//calculating the line current
I1mag=sqrt(3)*Irmag;
I1ang=Irang-30+360;
I2mag=sqrt(3)*Iymag;
I2ang=Iyang-30+360;
I3mag=sqrt(3)*Ibmag;
I3ang=Ibang-30+360;
disp(I1mag,"the magnitude of I1 line current is (in A)");
disp(I1ang,"the angle of I1 line current is (in degree)");
disp(I2mag,"the magnitude of I2 line current is (in A)");
disp(I2ang,"the angle of I2 line current is (in degree)");
disp(I3mag,"the magnitude of I3 line current is (in A)");
disp(I3ang,"the angle of I3 line current is (in degree)");
P=3*(Vrymag)*cosd(63.4)*Irmag;
P=P/1000;//converting to kilo Watt
disp(P,"power drawn by the load is (in kW)");
