clc;
v=20;   //velocity in m/sec
g=9.8;  //g in m/sec square
h=200;  //height in m
diff=(v*v)/(2*9.8*200);  //calculating Final KE/Initial PE
disp((1-diff)*100,"Percent of initial PE lost = "); //displaying result