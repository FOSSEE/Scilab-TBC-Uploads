//Exa2.6
clc;
clear;
close;
//Cost of component using process sequence 1
disp("The process sequence 1 of the component is as follows : Turning - Milling - Shaping - Drilling") ;
disp("Calculations are summarized in form of table below : ");
disp("Operation     Operation       Time       Machine Hour rate     Cost");
disp("   No.                     Min    Hour           Rs.             Rs.");
disp("   1           Turning       5   0.083          200           16.60");
disp("   2           Milling       8   0.133          400           53.20");
disp("   3          Shapiing      10   0.167          350           58.45");
disp("   4          Drilling       3   0.050          300           15.00");
disp("                                                   Total     143.25");

//Cost of component using process sequence 2
disp("The process sequence 2 of the component is as follows : Turning - Milling - Drilling") ;
disp("Calculations are summarized in form of table below : ");
disp("Operation     Operation       Time       Machine Hour rate     Cost");
disp("   No.                     Min    Hour           Rs.             Rs.");
disp("   1           Turning       5   0.083          200           16.60");
disp("   2           Milling      14   0.233          400           93.20");
disp("   4          Drilling       3   0.050          300           15.00");
disp("                                                   Total     124.80");

//Cost of component using process sequence 3
disp("The process sequence 3 of the component is as follows : Only CNC operations") ;
disp("Calculations are summarized in form of table below : ");
disp("Operation     Operation       Time       Machine Hour rate     Cost");
disp("   No.                     Min    Hour           Rs.             Rs.");
disp("   1             CNC         8   0.133         1000             133");

disp("The process sequence 2 has the least cost. Therefore, it should be selected for manufacturing the component.")
