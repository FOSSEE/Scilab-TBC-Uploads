//Example No. 4_07
//Absolute and Relative Errors
//Pg No. 71
clear ; close ; clc ;

h_bu_t = 2945 ;
h_bu_a = 2950 ;
h_be_t = 30 ;
h_be_a = 35 ;
e1 = abs(h_bu_t - h_bu_a)
e1_r = e1/h_bu_t
e2 = abs(h_be_t - h_be_a)
e2_r = e2/h_be_t
mprintf('\n For Building : \n Absolute error,  e1 = %i \n Relative error , e1_r = %.2f percent \n ',e1,e1_r*100) 
mprintf('\n For Beam : \n Absolute error,  e2 = %i \n Relative error , e2_r = %.2G percent \n ',e2,e2_r*100)