//Ex1_5
clc
A=10*10^(-6); p1=10^(-4); p2=10^(3);p3=10^(10);l=1*10^(-2); //initializations
disp("cross sectional area,A ="+string(A)+"merer square") 
disp("resitivity(rho),p1 ="+string(p1)+" ohm-m")
disp("resitivity(rho),p2 ="+string(p2)+" ohm-m")
disp("resitivity(rho),p3 ="+string(p3)+" ohm-m")
disp("conductor length,l ="+string(l)+" metre")
disp(" resistance for copper,R = p1*l/A = "+string(p1*l/A)+"ohm") //calculations for copper
disp(" resistance for silicon,R = p2*l/A = "+string(p2*l/A)+"ohm") //calculations for silicon
disp(" resistance for glass,R = p3*l/A = "+string(p3*l/A)+"ohm") //calculations for glass
