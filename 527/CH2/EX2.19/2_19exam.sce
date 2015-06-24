//Engineering and Chemical Thermodynamics
//Example 2.19
//Page no :85

clear ; clc ;
//From steam table
h_cap_st_1 = 2923.4 ; // [kJ/kg]
h_cap_200 = 2875.3 ; // {kJ/kg} , At 100kPa
h_cap_250 = 2974.3 ; // {kJ/kg} , At 100 kPa
del_T = 250-200 ;

T1 = 200 ; //[K]
h_cap_st_2 = h_cap_st_1 ;//Assumimg bulk kinetic energy of the stream and heat transfered is  negligible
T2 = T1 + del_T * (h_cap_st_2 - h_cap_200) / (h_cap_250 - h_cap_200) ;
disp(" Example: 2.19   Page no : 85") ;
printf('\n      The exit temperature is = %d *C',T2) ;