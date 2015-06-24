// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT CURRENT POWER TRANSMISSION

// EXAMPLE : 6.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
K_1 = 2.5 ; // Factor
K_2 = 1.7 ; // Factor

// CALCULATIONS
// For case (b)
I_d = poly(0,'I_d') ; // since P_loss(dc) = P_loss (ac) 
I_L = poly(0,'I_L') ; // i.e 2*I_d^2*R_dc = 3*I_L^2*R_ac 
I_d = sqrt(3/2)*I_L ; // Ignoring skin effects R_dc = R_ac
I_d1 = 1.225*I_L ; // Refer Equ 6.23

// For case (a)
V_d = poly(0,'V_d') ; // Defining a ploynomial V_d
E_p = poly(0,'E_p') ; // since P_dc = P_ac (or) V_d*I_d = 3*E_p*I_L
V_d = 2.45*E_p ; // Refer Equ 6.25

// For case (c)
ins_lvl = (K_2*(V_d/2))/(K_1*E_p) ; // Ratio of dc insulation level to ac insulation level
ins_lvl_1 = (K_2*2.45/2)/K_1 ; // simplifying above equ
dc_i = poly(0,'dc_i') ; // dc_i = dc insulation level
ac_i = poly(0,'ac_i') ; // ac_i = ac insulation level
dc_i = ins_lvl_1 * ac_i ;

// DISPLAY RESULTS
disp("EXAMPLE : 6.1 : SOLUTION :-") ;
printf("\n (a) Line-to-line dc voltage of V_d in terms of line-to-neutral voltage E_p , V_d = \n") ; disp(V_d) ;
printf("\n (b) The dc line current I_d in terms of ac line current I_L , I_d = \n"); disp(I_d1) ;
printf("\n (c) Ratio of dc insulation level to ac insulation level =  \n") ; disp(dc_i/ac_i) ;
printf("\n  (or) dc insulation level = \n") ; disp(dc_i) ;
