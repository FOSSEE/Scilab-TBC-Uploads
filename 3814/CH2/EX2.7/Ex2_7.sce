//  to calculate air velocity assuming density of air 1.2kg/m3
clc;
gammma=9800 // constant gammma
h=4e-3 // height of water in mm
pair=1.2 // air velocity of air in kg/m3
deltap=h*gammma
V=sqrt((2*deltap)/pair)
mprintf('V =%f m/s',V)
