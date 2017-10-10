// Example 13_2
clc;funcprot(0);
// Given data
D_piston=2.00;// ft
W_out=20;// hp
L=4.00;// ft/stroke
m_b=4000;// lbf
d=15.0;// ft
Duty=35.0*10^6;
N=18.0;// strokes per minute

// Calculation
// (a)
A=(%pi*D_piston^2)/4;// ft^2
W_out=20*33000;// ft.lbf/min
p_avg=W_out/(A*L*N);// lbf/ft^2
p_avg=p_avg/144;// lbf/in^2
// (b)
n_T=(Duty/(8.5*10^8))*100;// The actual thermal efficiency of the engine in %
// (c)
W_out=20;// hp
Q_boiler=(W_out*2545)/(n_T/100);// Btu/h
printf("\n(a)The average pressure of the cycle,p_avg=%2.1f lbf/in^2 \n(b)The actual thermal efficiency of the engine,n_T=%1.2f percentage \n(c)The heat rate produced by the boiler,Q_boiler=%1.2e Btu/h",p_avg,n_T,Q_boiler);
