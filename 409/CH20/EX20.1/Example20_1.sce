clear ;
clc;
// Example 20.1
printf('Example 20.1\n\n');
// Page no. 594
// Solution Fig E20.1

// Given
p_CO2 = [0,25,50,100,200,400,760] ;// Values of partial pressure of CO2 - [mm Hg]
y = [0,6.69*10^-2,9.24*10^-2,0.108,0.114,0.127,0.137] ;// adsorption of CO2 -[g adorbed / g seives]

// R square is a perfect fit
plot(p_CO2,y);
title('Figure E20.1 The Freundlich and Langmuir iotherms coincide for the adsorption of CO2 on 5A molecular seives');
xlabel('P- partial pressure of CO2');
ylabel('y');
xgrid(1);