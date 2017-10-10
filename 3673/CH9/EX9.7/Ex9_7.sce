//Example 9_7 page no:356
clc;
Zrmag=3.61;
Zrang=56.3;
Zymag=2.23;
Zyang=-63.4;
Zbmag=5;
Zbang=53.13;
Zmag=19.10;
Zang=47.3;
//calculating the impedence magnitude and angle
Zrymag=(Zrmag*Zymag);
Zybmag=(Zymag*Zbmag);
Zbrmag=(Zbmag*Zrmag);
Zryang=(Zrang-Zyang);
Zybang=(Zyang-Zbang);
Zbrang=(Zbang-Zrang);
Zrymag=Zmag/Zbmag;
Zryang=Zang-Zbang;
Zybmag=Zmag/Zrmag;
Zybang=Zang-Zrang;
Zbrmag=Zmag/Zymag;
Zbrang=Zang-Zyang;
//converting to rectangular form
Zryrel=Zrymag*cosd(Zryang);
Zryimg=Zrymag*sind(Zryang);
Zry=Zryrel+(%i*Zryimg);
disp(Zry,"the impedence Zry is(in ohm)");
//converting to rectangular form
Zybrel=(Zybmag*cosd(Zybang));
Zybimg=(Zybmag*sind(Zybang));
Zyb=Zybrel+(%i*Zybimg);
disp(Zyb,"the impedence Zyb is(in ohm)");
//converting to rectangular form
Zbrrel=Zbrmag*cosd(Zbrang);
Zbrimg=Zbrmag*sind(Zbrang);
Zbr=Zbrrel+(%i*Zbrimg);
disp(Zbr,"the impedence Zbr is(in ohm)");
