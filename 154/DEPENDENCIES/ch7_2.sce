clc
disp("Example 7.2")
printf("\n")

//Let wt=q
q=-8:0.5:8
v=5*cos (q)
figure
a= gca ();
plot(q,v)
xtitle ('v vs wt','wt','v ');
a. thickness = 2;
