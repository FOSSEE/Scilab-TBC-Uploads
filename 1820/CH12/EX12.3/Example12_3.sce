// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 12 : CONSTRUCTION OF OVERHEAD LINES

// EXAMPLE : 12.3 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
a = 45 ; // OH line to be bulit on wood poles in ft
b = 6.5 ; // Ground depth in ft
c = 1 ; // Top cross-arm below pole top in ft
d = 3 ; // Lower cross-arm below pole top in ft
m_t = 0.6861 ; // Transverse wind load on top cross-arm in lb/ft
m_l = 0.4769 ; // Transverse wind load on lower cross-arm in lb/ft
u_s = 8000 ; // Ultimate strength of wood pole in lb/sq.in
sf = 2 ; // Safety factor
span_avg = 250 ; // Average span in ft
p = 9 ; // Transverse wind load on wood poles in clb/sq.ft

// CALCULATIONS
h_1j = a - b - c ; // Moment arms for top arm in ft
h_2j = a - b - d ; // Moment arms for top arm in ft
M_tc1 = 1 * 4* m_t * span_avg * h_1j ; // Total bending moment for top arm in lb-ft
M_tc2 = 1 * 4* m_l * span_avg * h_2j ; // Total bending moment for lower arm in lb-ft
M_tc = M_tc1 + M_tc2 ; // Total bending moment for both cross-arms together in lb-ft
S = u_s/sf ; // Allowable max fiber stress in pounds per sq.inch
c_pg = ( M_tc/( 2.6385*10^-4*S ) )^(1/3) ; // circumference of pole at ground line in inch

c_pt = 22 ; // From proper tables , for 8000 psi , 
h_ag = a - b ; // Height of pole above ground in ft
d_pg = c_pg/(%pi) ; // circumference of pole at ground line in inches
d_pt = c_pt/(%pi) ; // circumference of pole at pole top in inches
M_gp = (1/72)*p *(h_ag^2)*(d_pg + 2*d_pt) ; // Bending moment due to wind on pole in pound ft . using equ 12.9
M_T = M_tc + M_gp ; // Total bending moment due to wind on conductor & pole
c_pg1 = (M_T/( 2.6385 * 10^-4 * S ) )^(1/3) ; // using equ 12.11

// DISPLAY RESULTS
disp("EXAMPLE : 12.3 : SOLUTION :-") ;
printf("\n Minimum required pole circumference at the ground line , c = %.1f in \n",c_pg1) ;
printf("\n Therefore , the nearest standard size pole,which has a ground-line circumference larger than c = %.1f in , has to be used \n",c_pg1) ;
printf("\n Therefore required pole circumference at the ground line to be used is , c = %.f inch \n",c_pg1) ;
