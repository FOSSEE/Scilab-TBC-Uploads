//clc()
P = 101.3;//kPa
Per1 = 10;//%
Pa = P * Per1 / 100;// ( a - benzene )
Ps = Pa;//( saturation )
//lnPs = 13.8858 - 2788.51/(T - 52.36)
T = 2788.51 / ( 13.8858 - log(Ps)) + 52.36;
disp("K",T,"Temperature at which saturation occurs = ")