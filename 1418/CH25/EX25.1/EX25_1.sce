//EXAMPLE 25.1
//ENERGY STORED IN THE AIR GAP

clc;
funcprot(0);

//Variable Initialisation
scod=15;...........//Statot-core outer diameter in Centi Meter
scid=10.05;........//Stator-core inner diameter in Centi Meter
rcod=10;............//Rotor-core outer diameter in Centi meter
rcid=5;...........//Rotor-core inner diameter in Centi Meter
Al=8;............//Axial length of the machine in Centi Meter

Vsc=(3.14/4)*(scod^2-scid^2)*Al;........//Volume of stator-core in Centi Meter^3
y=round(Vsc);......................//Rounding of decimmal places
Vrc=(3.14/4)*(rcod^2-rcid^2)*Al;.........//Volume of rotor-core in Centi Meter^3
Vag=(3.14/4)*(scid^2-rcod^2)*Al;..........//Volume of air gap in the machine in Centi Meter^3
y1=round(Vag*10)/10;.......................//Rounding of decimal places

disp(y,"Volume of stator-core in Centi Meter^3:");
disp(Vrc,"Volume of rotor-core in Centi Meter^3:");
disp(y1,"Volume of air gap in the machine in Centi Meter^3:");
