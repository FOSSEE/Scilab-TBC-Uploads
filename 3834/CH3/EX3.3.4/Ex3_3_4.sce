//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.3.4
clc;
clear;
//given
N1=1.487;//refractive index 
delta=1.71;
L=5E3;//length of the graded index fiber
c=3E8;//velocity of light in m/s

b=delta*delta;
e=L*N1*b;
w=8*c;
deltatg1=(e/w)*1E5;//pulse spreading due to modal dispersion in ns
deltatg1_by_L=(deltatg1/L)*1E3;//maximum bit rate Mbits/s

mprintf("\n Pulse spreading due to modal dispersion=%.1f ns",deltatg1);
mprintf("\n Maximum bit rate=%.2f ns/Km",deltatg1_by_L);
