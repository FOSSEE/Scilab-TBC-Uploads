
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Introduction to Fluid Mechanics, 3rd Ed. William S. Janna Chapter - 1 Example # 1.7 ")

//Using Appendix table A.6 for properties of air
//Specific heat of air in Btu/slag
cp = 7.72;
//Specific heat ratio gamma for air is
gamma = 1.4;
//Specific heat at constant volume of air in Btu/slag.R
cv = cp/gamma;

//Inital temperature in degree F
T1 = 70;//Symbol is assumed for computation
//Final temperature in degree F
T2 = 110;//Symbol is assumed for computation
//Temperature difference deltaT in degree K
deltaT = T2-T1;

//Change in internal energy in Btu/slag
disp("Change in internal energy in Btu/slag is")
deltau = cv*deltaT
//Answer varies slightly because of round-off error
