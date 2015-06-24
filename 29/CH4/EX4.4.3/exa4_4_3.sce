//Caption:to_find_various_signal_flow_graph_parameter
// example 4.4.3
//page 66
syms a b c d e f g h ij
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
//six independent path
P1=a*b*d
P2=e*f*h
P3=a*j*h
P4=e*i*d
P5=-e*i*c*j*h
P6=-a*j*g*i*d
//3 INDIVIDUAL LOOPS
L1=-b*c
L2=-f*g
L3=-i*c*j*g
//NON TOUCHING LOOPS
L1L2=L1*L2
//PATH FACTORS
D3=1;D4=1;D5=1;D6=1
D1=1-L2
D2=1-L1
//GRAPH DETERMINANT
D=1-(L1+L2+L3)+(L1L2);
D=simple(D)
disp(D,"graph_determinant=")