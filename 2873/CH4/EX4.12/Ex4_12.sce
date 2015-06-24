// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 12")
W=840;//work done by reservoir in KJ
disp("let us assume that heat engine rejects Q2 and Q3 heat to reservior at 300 K and 200 K respectively.let us assume that there are two heat engines operating between 400 K and 300 K temperature reservoirs and between 400 K and 200 K temperature reservoirs.let each heat engine receive Q1_a and Q1_b from reservoir at 400 K as shown below")
disp("thus,Q1_a+Q1_b=Q1=5*10^3 KJ...............eq1")
disp("Also,Q1_a/Q2=400/300,or Q1_a=4*Q2/3...............eq2")
disp("Q1_b/Q3=400/200 or Q1_b=2*Q3...............eq3")
disp("substituting Q1_a and Q1_b in eq 1")
disp("4*Q2/3+2*Q3=5000...............eq4")
disp("also from total work output,Q1_a+Q1_b-Q2-Q3=W")
disp("5000-Q2-Q3=840")
disp("so Q2+Q3=5000-840=4160")
disp("Q3=4160-Q2")
disp("sunstituting Q3 in eq 4")
disp("4*Q2/3+2*(4160-Q2)=5000")
disp("so Q2=(5000-2*4160)/((4/3)-2) in KJ")
Q2=(5000-2*4160)/((4/3)-2)
disp("and Q3=4160-Q2 in KJ")
Q3=4160-Q2
disp("here negative sign with Q3 shows that the assumed direction of heat is not correct and actually Q3 heat will flow from reservoir to engine.actual sign of heat transfers and magnitudes are as under:")
disp("Q2=4980 KJ,from heat engine")
disp("Q3=820 KJ,to heat engine")
