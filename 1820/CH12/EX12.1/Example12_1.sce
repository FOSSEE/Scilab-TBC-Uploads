// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 12 : CONSTRUCTION OF OVERHEAD LINES

// EXAMPLE : 12.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
cost_avg = 1500 ; // Average cost on each repair in $
r_0 = 0 ; // No. of times repair required for damage to line
r_1 = 1 ; // No. of times repair required
r_2 = 2 ; // No. of times repair required
r_3 = 3 ; // No. of times repair required
P_r_0 = 0.4 ; // Probability of exactly no. of repairs for r_0
P_r_1 = 0.3 ; // Probability of exactly no. of repairs for r_1
P_r_2 = 0.2 ; // Probability of exactly no. of repairs for r_2
P_r_3 = 0.1 ; // Probability of exactly no. of repairs for r_3
R_0 = 0 ; // No. of times repair required for relocating & rebuilding
R_1 = 1 ; // No. of times repair required
P_R_0 = 0.9 ; // Probability of exactly no. of repairs for R_0
P_R_1 = 0.1 ; // Probability of exactly no. of repairs for R_1
n = 25 ; // useful life in years
i = 20/100 ; // carrying charge rate
p = ((1 + i)^n - 1)/(i*(1+i)^n) ; // p = P/A . Refer page 642

// CALCULATIONS
B = cost_avg*(r_0*P_r_0 + r_1*P_r_1 + r_2*P_r_2 + r_3*P_r_3 - R_0*P_R_0 - R_1*P_R_1)*p ; // Affordable cost of relocating line

// DISPLAY RESULTS
disp("EXAMPLE : 12.1 : SOLUTION :-") ;
printf("\n Affordable cost of relocating line , B = $ %.1f \n",B) ;
printf("\n  Since actual relocating & rebuilding of line would cost much more than amount found \n") ;
printf("\n  The distribution engineer decides to keep the status quo \n") ;
