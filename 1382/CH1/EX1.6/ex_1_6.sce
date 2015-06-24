// Example 1.6: which supply voltage will keep brighness of diode constant
clc, clear
v1=1.8; // in volts
v2=3; // in volts
vs=24; // in volts
rs=820;// in ohms
Imin=((vs-v2)/rs);//case1
Imax=((vs-v1)/rs);
vs1=5; // in volts
rs1=120;// in ohms
Imin1=((vs1-v2)/rs1);//case2
Imax1=((vs1-v1)/rs1);
r1=470; // in ohmI1=(vs-v1)/r1; // in ampere
disp(Imax,"maximum current in ampere in case1(A) = ")
disp(Imin,"minimum current in ampere in case1(A) = ")
disp(Imax1,"maximum current in ampere in case2(A) = ")
disp(Imin1,"minimum current in ampere in case2(A) = ")
disp("Brightness in the first case will remain constant wheras in second case it will be changing ,therefore, in order to get an approximately constant brighntness we use as large a supply voltage as possible")
