//Caption: Find (a)Voltage per turn (b)Cross sectional area of core (c)Cross sectional area of conductor for l.v (d)Cross sectional area of conductor for h.v (e)Number of turns in l.v (f)Number of turns in h.v (g)Window area (h)Yoke and approx. frame size (i)Copper used in windings
//Exa:4.1
clc;
clear;
close;
P=5000//Power supplied to transformer(in VA)
f=50//frequency(in Hertz)
V_1=415//Primary side voltage(in volts)
V_2=240//Secondary side voltage(in volts)
k=0.75
B=1.6//Maximum flux density(in weber/m^2)
i_d=2//Current density(in A/mm^2)
k_w=0.3
E=k*sqrt(P/1000)
disp(E,'(a)Voltage per turn(in volts)=')
A_1=(E*(10^6))/(4.44*B*f)
disp(A_1,'(b)Cross sectional area of core(in mm^2)=')
i_2=P/V_2
A_2=i_2/i_d
disp(A_2,'(c)Cross sectional area of conductor for low voltage side(in mm^2)=')
i_1=P/V_1
A_1=i_1/i_d
disp(A_1,'(d)Cross sectional area of conductor for high voltage side(in mm^2)=')
n_2=V_2/E
disp(n_2,'(e)Number of turns in low voltage winding=')
n_1=V_1/E
disp(n_1,'(f)Number of turns in high voltage winding=')
A_w=(P*(10^(9))/1000)/(2.22*A_1*k_w*i_d*B)
disp(A_w,'(g)Window area(in mm^2)=')
cu=(A_1*n_1)+(A_2*n_2)
disp(cu,'(i)Copper used in windings(in mm^2)=')