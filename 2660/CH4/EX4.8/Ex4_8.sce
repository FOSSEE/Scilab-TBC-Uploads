clc
Tk = 360 // time taken by tool to cut before sharpening in min.
Tc = 20 // time taken to change the tool in min.
T = 4320 // time taken before it is discarded in min.
t = (Tc*Tk)/T //  tool change time per cycle in min.
printf("\n Unit tool change time per cycle = %0.2f min" , t )
