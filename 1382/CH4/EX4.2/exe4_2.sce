// Example 4.2: find the drain current
clc, clear
Idss=12; // maximum drain current in mili-ampere
VgsOFF=-20; // pinch off voltage in volts
Vgs1=0; // gate source voltage in volts
Vgs2=-5; // gate source voltage in volts
Vgs3=-10; // gate source voltage in volts
Vgs4=-15; // gate source voltage in volts
Vgs5=-20; // gate source voltage in volts
Id1=Idss*(1-(Vgs1/VgsOFF))^2;
Id2=Idss*(1-(Vgs2/VgsOFF))^2;
Id3=Idss*(1-(Vgs3/VgsOFF))^2;
Id4=Idss*(1-(Vgs4/VgsOFF))^2;
Id5=Idss*(1-(Vgs5/VgsOFF))^2;
disp(Id1,"drain current (mA) = ")
disp(Id2,"drain current (mA) = ")
disp(Id3,"drain current (mA) = ")
disp(Id4,"drain current (mA) = ")
disp(Id5,"drain current (mA) = ")
