//Example 1.39://frequency range
clc;
clear;
fn=800;// natural frequency in cps 
MD=12;//maximum amount of deviation in amplitude ratio
M1=1.12;//
M2=0.88
r=0.904;//ratio 
y=0.62;//damping ratio
f=fn*r;//excitation frequency in cps
//When M=1.12 THE SOLUTION WILL HAVE IMAGINARY ROOTS AND THIS IMLIES THE OUTPUT WOULD NEVER BE 1.12 TIMES THE OUTPUT FOR ANY FREQUENCY
disp(f,"excitation frequency in cps")
//the deviation remains with in 12 percent of output for the frequency range 0-723cps
