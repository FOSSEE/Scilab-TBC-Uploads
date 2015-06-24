clear;
clc;
// Example 23.7
printf('Example 23.7\n\n');
//page no. 701
// Solution Fig.E23.7

//Given
T1 = 640 ;// Initial temperature -[degree F]
T2 = 480 ;// Final temperature -[degree F]
P1 = 92 ;// Initial pressure -[psia]
P2 = 52 ;// Final pressure - [psia]

// We need to use steam table to get H value at initial and final condition by interpolation 
//From steam table
//At 90 psia
H1_600 = 1328.7 ;//H at 90 psia and 600 F-[Btu/lb]
H1_700 = 1378.1 ;//H at 90 psia and 700 F-[Btu/lb]
//At 95 psia
H2_600 = 1328.4 ;//H at 95 psia and 600 F-[Btu/lb]
H2_700 = 1377.8 ;//H at 95 psia and 700 F-[Btu/lb]
//H at 92 psia and 600 F
H3_600 = H1_600+ ((H2_600-H1_600)/(95-90))*(92-90);//H  at 92 psia and 600 F-[Btu/lb]
//H  at 92 psia and 700 F
H3_700 = H1_700+ ((H2_700-H1_700)/(95-90))*(92-90);//H at 92 psia and 700 F-[Btu/lb]
// Now we need to get V at 92 psia and 640 F
H3_640 = H3_600+((H3_700-H3_600)/(700-600))*(640-600);//H at 92 psia and 640 F-[Btu/lb]

//At 50 psia
H1_450 = 1258.7 ;//H at 50 psia and 450 F-[Btu/lb]
H1_500 = 1282.6 ;//H at 50 psia and 500 F-[Btu/lb]
//At 55 psia
H2_450 = 1258.2 ;//H at 55 psia and 450 F-[Btu/lb]
H2_500 = 1282.2 ;//H at 55 psia and 500 F-[Btu/lb]
//V.P at 52 psia and 450 F
H3_450 = H1_450+ ((H2_450-H1_450)/(55-50))*(52-50) ;//H at 52 psia and 450 F-[Btu/lb]
//V at 52 psia and 500 F
H3_500 = H1_500+ ((H2_500-H1_500)/(55-50))*(52-50);//H at 52 psia and 500 F-[Btu/lb]
// Now we need to get H at 52 psia and 480 F
H3_480 = H3_450+((H3_500-H3_450)/(500-450))*(480-450);// H at 52 psia and 480 F-[Btu/lb]

del_H =   H3_480 - H3_640;// Change in enthalpy - [Btu/lb]
printf('Change in enthalpy is %.1f Btu/lb .\n',del_H);