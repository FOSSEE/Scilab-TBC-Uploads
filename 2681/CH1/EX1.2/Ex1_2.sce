//determine the electric field at a point;
//given
clc
Qf=2d-6
Qt=1d-6
rf=[1 0 0]//this can also be written as ax
rt=[0 1 0]//this can also be written as ay
rtf=rt-rf
Rtf=norm(rtf)//this is the magnitude of the vector
atf=rtf/Rtf//the unit vector across the two points p1 and p2
//the electric field at the point p2 is given by:
epsilon0=8.85D-12//value may differ, as i have not used the estimated value
E=((Qf*Qt)/(4*%pi*epsilon0*(Rtf)^2))*atf//electric field calculation
E=round(E*1d+6)/1d+6///rounding off decimals
disp(E*1d+3,'the electric field of p2 is:')//mN/C
