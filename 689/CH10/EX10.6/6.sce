clc; funcprot(0);
//Example 10.6 Induced drag of tappered wings

// Initialisation of variables
b = 46;
w = 4;
c = 8;
r = 2;
//data from figure 10.9
CO = sqrt(6^2+19^2);
CH = sqrt(19.93^2 - 2^2);
EOH = atand(6/19);
COH = acosd(2/19.93);
GOH = 270 - EOH - COH;
Area_ABCD = 2*c;
Area_BGOC = 19*(2+8)*0.5;
Area_COH = 0.5*r*CH;
Area_GOH = GOH/360*(%pi*r^2);

// Calculations
Area_half_wing = Area_ABCD + Area_BGOC + Area_COH + Area_GOH;
S = 2*Area_half_wing;
AR = b^2/S;

//Results 
disp(AR,"Required aspect ratio :" );
