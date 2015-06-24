// Example 4.1: find the drain current
clc, clear
Idss=15; // maximum drain current in mili-ampere
VgsOFF=-5; // pinch off voltage in volts
Vgs1=0; // gate source voltage in volts
Vgs2=-1; // gate source voltage in volts
Vgs3=-4; // gate source voltage in volts
Id1=Idss*(1-(Vgs1/VgsOFF))^2;
Id2=Idss*(1-(Vgs2/VgsOFF))^2;
Id3=Idss*(1-(Vgs3/VgsOFF))^2;
disp(Id1,"drain current (mA) = ")
disp(Id2,"drain current (mA) = ")
disp(Id3,"drain current (mA) = ")
