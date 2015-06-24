clc;funcprot(0);//EXAMPLE 3.10
// Initialisation of Variables
r=6;..............//Compression ratio
p1=1;................//Pressure after isochoric expansion in bar
t1=300;................//Temperature after isochoric expansion in K
t3=1842;...............//Temperature after isochoric compression in K
ga=1.4;...............//Ratio of specific heats
//Calculations
p2=p1*(r^ga);...............//Pressure after adiabatic compression in bar
t2=t1*(r^(ga-1));.............//Temperature after adiabatic compression in K
p3=p2*(t3/t2);..................//pressure after isochoric compression in bar
t4=t3/(r^(ga-1));..............//Temperature after adiabatic expansion in K
p4=p3*(1/(r^(ga)));...........//Pressure after adiabatic expansion in bar
etaotto=1-(1/(r^(ga-1)));............//Efficiency of otto cycle
p5=p1;
t5=((p5/p3)^((ga-1)/ga))*t3;................//Atkinson cycle temp after further adiabatic expansion in K
etatk=1-((ga*(t5-t1))/(t3-t2));...........//Efficiency of atkinson cycle
disp(t2,"Temperature after adiabatic compression in K:")
disp(p2,"Pressure after adiabatic compression in bar:")
disp(t3,"Temperature after isochoric compression in K:")
disp(p3,"Pressure after isochoric compression in bar:")
disp(t4,"Temperature after adiabatic expansion in K:")
disp(p4,"Pressure after adiabatic expansion in bar:")
disp((etatk-etaotto)*100,"Improvement in efficiency in %:")
