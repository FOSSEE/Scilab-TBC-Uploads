// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT CURRENT POWER TRANSMISSION

// EXAMPLE : 6.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
K = 3 ; // factor

// CALCULATIONS
// For case (a)
V_d = poly(0,'V_d') ; // defining a polynomial
E_p = poly(0,'E_p') ;
V_d = K*2*E_p ; // From equ 6.18

// For case (b)
P_dc = poly(0,'P_dc') ;
P_ac = poly(0,'P_ac') ;
P_dc = 2*P_ac ;

// For case (c)
P_ld = poly(0,'P_ld') ; // P_loss(dc)
P_la = poly(0,'P_la') ; // P_loss(ac)
P_ld = (2/3)*P_la ; 

// DISPLAY RESULTS
disp("EXAMPLE : 6.2 : SOLUTION :-") ;
printf("\n (a) Maximum operating V_d in terms of voltage E_p , V_d = \n") ; disp(V_d) ;
printf("\n (b) Maximum power transmission capability ratio,i.e,ratio of P_dc to P_ac , P_dc/P_ac = \n") ; disp(P_dc/P_ac) ;
printf("\n (or) P_dc = \n") ; disp(P_dc) ;
printf("\n (c) Ratio of total I^2*R losses , i.e ,Ratio of P_loss(dc) to P_loss(ac),which accompany maximum power flow = \n") ; disp(P_ld/P_la) ;
printf("\n (or) P_loss(dc) = \n") ; disp(P_ld) ;
