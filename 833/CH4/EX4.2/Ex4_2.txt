//Caption:Find (a)Voltage per turn (b)Cross sectional area of core (c)Cross sectional area of conductor for h.v (d)Number of turns per phase in h.v winding (e)Cross sectional area of conductor in l.v winding (f)Number of turns in l.v winding (g)Window area (h)Yoke and approx frame size,and (i)Copper used in window area
//Exa:4.2
clc;
clear;
close;
P=100000//Power supplied to transformer(in VA)
f=50//Frequency(in hertz)
V_1=11000//Primary side voltage(in volts)
V_2=433//Secondary side voltage(in volts)
k=0.45
B=1.65//Maximum flux density(in tesla)
k_w=0.28
i_d=2.5//Current density(in A/mm^2)
E=k*sqrt(P/1000)
disp(E,'(a)Voltage per turn(in volts)=')
A_1=E*(10^6)/(4.44*f*B)
disp(A_1,'(b)Cross sectional area of core(in mm^2)=')
I_1=P/(3*V_1)
a_1=I_1/i_d
disp(a_1,'(c)Cross sectional area of conductor in h.v winding(in mm^2)=')
n_1=V_1/E
disp(n_1,'(d)Number of turns per phase in h.v winding(in mm^2)=')
I_2=P/((3^0.5)*V_2)
a_2=I_2/i_d
disp(a_2,'(e)Cross sectional area of conductor in l.v winding(in mm^2)=')
v=V_2/(3^0.5)
n_2=v/E
disp(n_2,'(f)Number of turns in l.v winding=')
A_w=(P*(10^6))/(3.33*f*A_1*k_w*i_d*B)
disp(A_w,'(g)Window Area(in mm^2)=')
Cu=2*((a_1*n_1)+(a_2*n_2))
disp(Cu,'Copper used in window area(in mm^2)=')