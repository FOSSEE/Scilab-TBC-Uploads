

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 4 Example # 4.2 ")

disp("The given example is theoretical and does not involve any numerical computation")

// Local shear stress is given as:
// tau=0.3*((rho*mu/x)^0.5)*(Uinfinity^1.5)

// Using Local friction coefficient = local shear stress /
// (0.5*rho*Uinfinity*Uinfinity), we get local friction coefficient as:

//disp("Cfx = 0.6/((ReL*xstar))^0.5")

//Integrating the local value of shear stress over length L and dividing by
//area i.e. A=L*1, we get average friction coefficient as:

//disp("Cfbar = 1.2/(ReL^0.5)")
