//clc()
m = 1;//kg
percent1 = 20;//%
mwaterin = m * percent1 / 100;
mdrysolid = m - mwaterin;
percent2 = 2.44;//%
mout = mdrysolid / (1 - percent2/100);
mwaterout = mout - mdrysolid;
mremoved = mwaterin - mwaterout;
percentremoved = mremoved * 100 / mwaterin ;
disp("kg",mremoved,"weight of water removed = ")
disp("%",percentremoved,"percentage of water removed = ")