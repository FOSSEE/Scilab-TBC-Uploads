//scilab 5.4.1
//Windows 7 operating system
//chapter 19 VLSI Technology and Circuits
clc
clear
y=2//y=length unit in micrometres
W=3*y//W=mimimum metal linewidth in micrometres
disp("micrometres",W,"W=")
n=80//n=number of driven inverters
i=0.07//i=average current ratings in milliamperes
I=n*i//I=total currrent drawn by n inverters
disp("mA",I,"I=")
//1mA per micrometre of aluminium line width is the maximum safe average current an aluminium wire can carry.
disp("This needs a line at least width of")
disp("micrometres",I)
if (W>I) then
    disp("Above calculated minimum metal line-width (W) is thus the safe width of the metal line driving 80 inverters.")
end
f=5//f=number of fanout lines
w=f*W//w=required metal line width
disp("micrometres",w,"The metal line-width required to supply a fan-out of 5 lines is=")
