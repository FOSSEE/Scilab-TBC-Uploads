//Example 9_8 page no:357
clc;
Zrymag=10;
Zryang=30;
Zybmag=10;
Zybang=-45;
Zbrmag=2.5;
Zbrang=60;
Zmag=16.98;
Zang=0.33;
//calculating the impedence magnitude and angle
Zrmag=(Zrymag*Zbrmag)/Zmag;
Zrang=Zryang+Zbrang-Zang;
disp(Zrmag,"magnitude of Zr is(in ohm)");
disp(Zrang,"angle of Zr is (in degree)");
Zymag=(Zrymag*Zybmag)/Zmag;
Zyang=Zryang+Zybang-Zang;
disp(Zymag,"magnitude of Zy is(in ohm)");
disp(Zyang,"angle part of Zy is (in degree)");
Zbmag=(Zbrmag*Zybmag)/Zmag;
Zbang=Zbrang+Zybang-Zang;
disp(Zbmag,"magnitude of Zb is(in ohm)");
disp(Zbang,"angle part of Zb is (in degree)");
