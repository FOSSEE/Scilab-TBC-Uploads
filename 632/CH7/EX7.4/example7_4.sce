//clc()
P = 101.3;//kPa
Pbs = 54.21;//kPa
Pas = 136.09;//kPa
xf = 0.65;
xw = (P - Pbs)/(Pas - Pbs);
yd = xw * Pas / P ;
// f = ( xf - xw ) / ( yd - xw )
f = ( xf - xw ) / ( yd - xw );
per1 = f * 100;
disp("%",per1,"mole percent of the feed that is vapourised = ")