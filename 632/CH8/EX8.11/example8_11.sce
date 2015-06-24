//clc()
Td = 328;//K ( dry bulb )
P = 101.3;//kPa
PS = 10;//%
//refering to the psychometric chart, corresponding to 328 K and 10% saturation
Y1 = 0.012;//kg water / kg dry air
disp("kg water / kg dry air",Y1,"(a)Absolute humidity = ")
//Y1 = Pa * 18 / ( P - Pa ) * 29
Pa = Y1 * P * 29 /( 18 + Y1 * 29 );
disp("kPa",Pa,"(b)Partial Pressure of water vapour = ")
//using psychometric chart, saturation humidity at 328 K is given as
Y1s = 0.115;//kg water / kg dry air
disp("kg water / kg dry air",Y1s,"(c)The absolute humidity at 328K = ")
//at saturation partial pressure = vapour pressure
Pas = Y1s * P * 29 /( 18 + Y1s * 29 ); 
disp("kPa",Pas,"(d)Vapour Pressure of water vapour = ")
RS = Pa * 100 / Pas;
disp("%",RS,"(e)Percent relative saturation = ")
//using psychometric chart, moving horizontally keeping humidity constant to 100% saturation, we get dew point as,
T = 290;//K
disp("K",T,"(f)Dew point = ")