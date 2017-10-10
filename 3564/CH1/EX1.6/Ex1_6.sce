
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Introduction to Fluid Mechanics, 3rd Ed. William S. Janna Chapter - 1 Example # 1.6 ")

//Solving part a
disp("Part a)")
//Mass of air in kg
m = 4;
//Using Appendix table A.6 for properties of air
//Specific heat of air in J/Kg.K
cp = 1005;
//Representing temperature difference T2 - T1 as deltaT for computation
//detaT in degree K
deltaT = 10;

//Heat required in kJ
disp("Heat required in kJ is")
Q = ((m*cp)*deltaT)/1000

//Solving part b
disp("Part b)")
//Using Appendix table A.6 for properties of air
funcprot(0);
//Specific heat ratio gamma for air is
gamma = 1.4;
//Specific heat at constant volume of air in J/Kg.K
cv = cp/gamma;
//Heat required at constant volume in kJ
disp("Heat required at constant volume  in kJ is")
Q = ((m*cv)*deltaT)/1000
//Answer varies slightly because of round-off error
