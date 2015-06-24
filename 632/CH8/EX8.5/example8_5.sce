//clc();
Pa = 15;//kPa ( Partial pressure )
Pas = 26.36;//kPa ( Vapour pressure )
RS = Pa * 100 / Pas ;
Y = 0.1738;
Ys = 0.3517;
PS = Y * 100 / Ys;
disp("%",RS,"Relative humidity = ")
disp("%",PS,"Percent humidity = ")