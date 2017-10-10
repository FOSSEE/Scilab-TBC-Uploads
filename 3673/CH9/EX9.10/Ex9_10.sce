//Example 9_10 page no:361
clc;
Vrnmag=230;
Vynmag=230;
Vbnmag=230;
Vrnang=0;
Vynang=-120;
Vbn=-240;
//calculating the line voltages magnitude and angle
Vrymag=sqrt(3)*230;
Vybmag=sqrt(3)*230;
Vbrmag=sqrt(3)*230;
Vryang=30;
Vybang=-120+30;
Vbrang=-240+30;
disp(Vrymag,"the magintude of Vry is(in volt)");
disp(Vryang,"the angle of Vry is (in degree)");
disp(Vybmag,"the magintude of Vyb is(in volt)");
disp(Vybang,"the angle of Vyb is (in degree)");
disp(Vbrmag,"the magnitude of Vbr is(in volt)");
disp(Vbrang,"the angle of Vbr is (in degree)");
