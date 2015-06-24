//clc()
mdrysolid = 100;//kg
percentin = 25;
mwaterin = mdrysolid * percentin / 100;
percentout = 2.5;
mwaterout = mdrysolid * percentout / 100;
mremoved = mwaterin - mwaterout;
percentremoved = mremoved *100 / mwaterin ;
disp(percentremoved,"percentage of water removed = ")