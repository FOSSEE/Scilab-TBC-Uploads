//clc()
Tin = 380.7;//K
Pin = 101.3;//kPa
Tdew = 298;//K
mremoved = 2.25;//kg
V = 100;//m^3
//using humidity chart, humidity of air at dry bulb temperature of 380.7K and dew point = 298K is,
Y = 0.02;// kg water /kg dry air
disp("kg water /kg dry air",Y,"(a)Humidity of air entering the drier = ")
Tstp = 273.15;//K
Vstp = 22.4143;//m^3/kmol
N = V * Tstp / ( Vstp * Tin );
MY = Y * 29 / 18;//molal humidity
Ndryair = N / ( 1 + MY );
mdryair = Ndryair *29;
mwaterin = mdryair * Y;
mwaterout = mwaterin + mremoved;
Yout = mwaterout / mdryair;
// percent humidity is calculated using the chart, and is
PY = 55;//%
disp("kg water /kg dry air",Yout,"(b)exit air humidity = ")
disp("%",PY,"Percent humidity = ")
//from the humidity chart 
Twet = 313.2;//K
Td = 322.2;//K
disp("K",Twet,"(c)exit air wet bulb temperature = ")
disp("K",Td,"(c)exit air dry bulb temperature = ")
MYout = Yout * 29 / 18;
Nout = Ndryair * ( 1 + MYout ) / 1;
V1 = Nout * Vstp * Td / Tstp;
disp("m^3",V1,"(d)Volume of exit air = ")