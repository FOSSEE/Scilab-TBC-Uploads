// Scilab Code Ex11.2:  Page-11.16 (2004)
clc;clear;
a1 = 4; //  diameter of laser beam for distance first, m
a2 = 6; //  diameter of laser beam from second distance
d1 = 1; //  First distance from laser to output beam spot, m
d2 = 2; //  Second distance from laser to output beam spot, m
Div = (a2-a1)/(2*(d2-d1));
printf("\nDivergence in radian = %d milliradian", Div);

// Result
// Divergence in radian = 1 milliradian 
