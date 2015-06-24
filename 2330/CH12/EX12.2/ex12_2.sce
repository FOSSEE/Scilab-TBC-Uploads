// Example 12.2
format('v',6)
clc;
clear;
close;
// given data
gmo= 3000;// in µmhoS
V_GSoff= -4;// in V
I_DSS= 10;// in mA
disp("Part (i) When V_GS= -1");
V_GS= -1;// in V
// The value of gm 
gm= gmo*(1-V_GS/V_GSoff);// in µS
disp(gm,"The value of gm in µS is : ")
disp("Part (ii) When I_D= 2.5 mA")
I_D= 2.5;// in mA
// The value of gm 
gm= gmo*2*I_D/I_DSS;// in µS
disp(gm,"The value of gm in µS is : ")
