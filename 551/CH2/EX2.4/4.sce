clc
Vacuum_recorded=740; //mm of Hg
Barometric_reading=760; //mm of Hg

Absolute_pressure=(Barometric_reading-Vacuum_recorded)*133.4;
disp("Absolute pressure in the condenser=")
disp(Absolute_pressure)
disp("Pa")