clc;
clear;
sg=0.68;//specific gravity of gasoline
htg=17;//ft (height of gasoline)
htw=3;//ft (height of water)
//pressure p= (gamma*h)+atmp;
//pressure at water- gasoline interface p1 =sg*g*htg+atmp
p1=sg*62.4*htg; //atmp=0 , p1 is in lb/ft^2
pr1=p1/144;//lb/in^2
//pressure head as feet of water H
H= p1/62.4;//ft
//similarly pressure p2 at tank bottom
p2=62.4*htw+p1;//lb/ft^2
pr2 = p2/144;//lb/in^2
//pressure head as ft of water H1
H1=p2/62.4;//ft
disp("lb/in^2",pr1,"lb/ft^2 =", p1,"pressure at interface=")
disp("ft",H,"pressure head at interface in feet of water =")
disp("lb/in^2",pr2,"lb/ft^2 =", p2,"pressure at bottom=")
disp("ft",H1,"pressure head at bottom in feet of water =")

