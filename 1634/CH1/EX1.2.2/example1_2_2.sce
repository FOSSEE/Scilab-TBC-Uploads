

//exapple 1.2.2 
clc; funcprot(0);
// Initialization of Variable
pi=3.14259;
latA=12+36/60;//latitude of A
lonA=-115*60-6;//longitude of A
latB=12+36/60;//latitude of B
lonB=150*60+24;//longitude of B
d=(360*60-lonB+lonA)*cos(latA/180*pi);
disp(d*1.852,"distance between A & B in (km):");
