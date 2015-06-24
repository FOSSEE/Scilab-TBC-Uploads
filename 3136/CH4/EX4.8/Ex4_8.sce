clear all; clc;

disp("From example 4.7 we have Q=1200gpm,H=450ft,N=2400rpm")
disp("Furthermore Ns=851 rpm*(gpm^0.5)/(ft^0.75),D2=15in,b2=0.67in,U2=156.9 ft/s.")
disp("Also,ßb2=23 degrees,µs=0.86,V2=13.8ft/s and Vu2=106.9ft/s")
disp("Hence we have the angular momentum L=r2*Vu2 ")
L=15*106.9/(2*12)
printf(" Thus L= %0.2f dt/s^2",L)

disp("Fom figure 4.24 we have K3=0.46 and Ns=851.")
disp("Hence the volute exit velocity Vt=K3*(2*g*H)^0.5")
V_3=0.46*sqrt(2*32.2*450)
printf("\n Thus Vt= %0.2f ft/s",V_3)

disp("Also A_t=Q/V_t ")
A_t=1200*0.00223/78.3
printf(" At= %0.3f ft^2 which is equal to 4.92 in^2",A_t)
disp("Also from Figure 4.24 we have (D3-D2)/D2=0.08")

r_3=7.5*(1+0.08)
printf("\n r3= %0.2f",r_3)
disp("If the trapezoid with an included angle of 30 degrees is selected for bassic geometry of the volute cross section,the dimensions from each section can be calculated from Athita*Vthita=(Q*thita)/(2*pi)")

disp("r_c*V_thita=CL")
disp("A_thita=0.5*h*(a+b)")
disp("(a-b)/(2*h)=tan(15)")
disp("x_c=h*(2a+b)/(3*(a+b))")
disp("rc=r3+x_c")

disp("where b=1.82 b2=1.206 in. is selected")
disp("The equations are to be solved with iterations and performed with a spreadsheet.")
disp("The initial velocity is selected as V_thita=V_t")
disp("Then A_thita is calculated from 1,a and h from(3) and (4), and x_c and r_c from (5) and (6)")
disp("Then the improved V_thita is obtained from (2) and the process is repeated until the discrepancies of the repeated values are small enough.")
disp("In the final design the trapezoid is modified by roundidng off the corners and the area may be increassed by 5 to 10 percent to accomodate the blockage due to the boundary layer and sme secondary flows.")//final answers have not been provided in the book





