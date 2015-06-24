// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.16 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
n = 40 ; // useful life in years
i = 10/100 ; // carrying charge rate
A_P = (i*(1+i)^n)/((1 + i)^n - 1) ; // Refer page 642
A_F = 0.00226 ; // A_F = A/F
pr_tax = 3/100 ; // Annual ad property taxes is 3% of 1st costs of each alternative

// FOR OVERHEAD TRANSMISSION
L_OH = 50 ; // length of route A in mi
cost_b_A = 1 * 10^6 ; // cost per mile to bulid in $
salvage_A = 2000 ; // salvage value per mile at end of 40 years
cost_mait_OH = 500 ; // cost in $ per mile to maintain

// SUBMARINE TRANSMISSION LINE
L_S = 30 ; // length of route B in mi
cost_b_B = 4*10^6 ; // cost per mile to bulid in $
salvage_B = 6000 ; // salvage value per mile at end of 40 years
cost_mait_S = 1500 ; // cost in $ per mile to maintain

// GIL TRANSMISSION
L_GIL = 20 ; // length of route C in mi
cost_b_C = 7.6*10^6 ; // cost per mile to bulid in $
salvage_C = 1000 ; // salvage value per mile at end of 40 years
cost_mait_GIL = 200 ; // cost in $ per mile to maintain
savings = 17.5*10^6 ; // relative savings in power loss per year in $


// CALCULATIONS
n = 25 ; // useful life in years
i = 20/100 ; // carrying charge rate
p = ((1 + i)^n - 1)/(i*(1+i)^n) ; // p = P/A
// FOR OVERHEAD TRANSMISSION
P_OH = cost_b_A * L_OH ; // first cost of 500 kV OH line in $
F_OH = salvage_A * L_OH ; // Estimated salvage value in $
A_1 = P_OH * A_P - F_OH * A_F ; // Annual equivalent cost of capital in $
A_2 = P_OH * pr_tax + cost_mait_OH * L_OH ; // annual equivalent cost of tax and maintainance in $
A = A_1 + A_2 ; // total annual equi cost of OH line in $

// SUBMARINE TRANSMISSION LINE
P_S = cost_b_B * L_S ; // first cost of 500 kV OH line in $
F_S = salvage_B * L_S ; // Estimated salvage value in $
B_1 = P_S * A_P - F_S * A_F ; // Annual equivalent cost of capital in $
B_2 = P_S * pr_tax + cost_mait_S * L_S ; // annual equivalent cost of tax and maintainance in $
B = B_1 + B_2 ; // total annual equi cost of OH line in $

// GIL TRANSMISSION
P_GIL = cost_b_C * L_GIL ; // first cost of 500 kV OH line in $
F_GIL = salvage_C * L_GIL ; // Estimated salvage value in $
C_1 = P_GIL * A_P - F_GIL * A_F ; // Annual equivalent cost of capital in $
C_2 = P_GIL * pr_tax + cost_mait_GIL * L_GIL ; // annual equivalent cost of tax and maintainance in $
C = C_1 + C_2 ; // total annual equi cost of OH line in $
A_net = C - savings ; // Total net annual equi cost of GIL

// DISPLAY RESULTS
disp("EXAMPLE : 5.16 : SOLUTION :-") ;
printf("\n OVERHEAD TRANSMISSION LINE : \n") ;
printf("\n  Annual equivalent cost of capital invested in line , A_1 = $ %d \n",A_1) ;
printf("\n  Annual equivalent cost of Tax and maintainance , A_2 = $ %d \n",A_2) ;
printf("\n  Total annual equivalent cost of OH transmission , A = $ %d \n",A) ;
printf("\n \n SUBMARINE TRANSMISSION LINE : \n") ;
printf("\n  Annual equivalent cost of capital invested in line , A_1 = $ %d \n",B_1) ;
printf("\n  Annual equivalent cost of Tax and maintainance , A_2 = $ %d \n",B_2) ;
printf("\n  Total annual equivalent cost of Submarine power transmission , A = $ %d \n",B) ;
printf("\n \n GIL TRANSMISSION LINE : \n") ;
printf("\n  Annual equivalent cost of capital invested in line , A_1 = $ %d \n",C_1) ;
printf("\n  Annual equivalent cost of Tax and maintainance , A_2 = $ %d \n",C_2) ;
printf("\n  Total annual equivalent cost of Submarine power transmission , A = $ %d \n",C) ;
printf("\n  Total net equivalent cost of GIL transmission = $ %d \n",A_net) ;
printf("\n \n The result shows use of GIL is the best choice \n") ;
printf("\n The next best alternative is Overhead transmission line \n") ;
