clc;
w=160;    //weight in lb
g=32;     //g in ft/sec square
m=w/g;    //calculating m in slugs
v=(1*5280)/(4*60)'  //calculating v in ft/sec
mom=m*v;            //calculating avg. momentum in slug.ft/sec
disp(mom,"Average Momentum in slug.ft/sec = ");  //displaying result