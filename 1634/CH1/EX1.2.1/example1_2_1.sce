

//exapple 1.2.1 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
latA=28+42/60;//latitude of A
lonA=31*60+12;//longitude of A
latB=28+42/60;//latitude of B
lonB=47*60+24;//longitude of B
d=(lonB-lonA)*cos(latA/180*pi);
disp(d*1.852,"distance between A & B in (km):");
