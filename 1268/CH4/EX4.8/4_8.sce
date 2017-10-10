clc;
disp("Example 4.8")
Re=100000 // Reynold number
f=0.079/(Re^0.25) // friction factor according to 1/5th law
ratio= 1+ 3.75*((f/2)^0.5)
disp("The ratio of maximum velocity to the average velocity is ")
disp(ratio)
