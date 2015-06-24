clc
// from figure 4.4
v = 100 // cutting speed in m/min
D = 50 // mm
l1 = 76 // mm
f = 7.5 // feed in mm/rev.
// Case 1 , time to turn 38 mm diameter by 76 mm length of cut
N1 = (1000*v)/(%pi*D)// r.p.m
tm1 = l1*10/(f*N1) // min.
// Case 2 , time to turn 25 mm by 38 mm length
N2 = (1000*v)/(%pi*38) // r.p.m
l2 = 38 // mm
tm2 = l2*10/(f*N2) // min
tt = tm1 + tm2 // total time in min
printf("\n Total time = %0.2f min." , tt)
