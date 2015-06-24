//Example 3.5
clc;
clear;
close;
format('v',7);
//Given data :
w=9.81;//in kN/m^3
l=3;//in m
b=2;//in m
h=1;//in m
f_bottom=w*h;//in kN/m^2(Pressure intensity at bottom)
p_bottom=f_bottom*l*b;//kN
disp(p_bottom,"Total pressure on the bottom in kN : ");
f_long_vertical=f_bottom/2;//kN
p_long_vertical=f_long_vertical*l*h;//kN
disp(p_long_vertical,"Total pressure on long vertical wall in kN : ");
f_short_vertical=f_bottom/2;//kN
p_short_vertical=f_short_vertical*b*h;//kN
disp(p_short_vertical,"Total pressure on short vertical wall in kN : ");
