// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION 

// CHAPTER : 2 : TRANSMISSION LINE STRUCTURES AND EQUIPMENT

// EXAMPLE : 2.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
t_s = 0.49 ; // Human body is in contact with 60 Hz power for 0.49 sec
r = 100 ; // Resistivity of soil based on IEEE std 80-2000 

// CALCULATIONS
// For case (a)
v_touch50 = 0.116*(1000+1.5*r)/sqrt(t_s) ; // Maximum allowable touch voltage for 50 kg body weight in volts

// For case (b)
v_step50  = 0.116*(1000+6*r)/sqrt(t_s) ; // Maximum allowable step voltage for 50 kg body weight in volts
// Above Equations of case (a) & (b) applicable if no protective surface layer is used

// For metal to metal contact below equation holds good . Hence resistivity is zero
r_1 = 0 ; // Resistivity is zero

// For case (c)
v_mm_touch50 = 0.116*(1000)/sqrt(t_s) ; // Maximum allowable touch voltage for 50 kg body weight in volts for metal to metal contact

// For case (d)
v_mm_touch70 = 0.157*(1000)/sqrt(t_s) ; // Maximum allowable touch voltage for 70 kg body weight in volts for metal to metal contact

// DISPLAY RESULTS
disp("EXAMPLE : 2.1 : SOLUTION :-") ;
printf("\n (a) Tolerable Touch potential , V_touch50 = %.f V , for 50 kg body weight \n",v_touch50) ;
printf("\n (b) Tolerable Step potential , V_step50 = %.f V , for 50 kg body weight \n",v_step50) ;
printf("\n (c) Tolerable Touch Voltage for metal-to-metal contact , V_mm_touch50 = %.1f V , for 50 kg body weight \n",v_mm_touch50) ;
printf("\n (d) Tolerable Touch Voltage for metal-to-metal contact , V_mm_touch70 = %.1f V , for 70 kg body weight \n",v_mm_touch70) ;
