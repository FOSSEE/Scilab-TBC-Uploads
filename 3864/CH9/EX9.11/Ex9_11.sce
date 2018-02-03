clear
//
//

//Initilization of Variables

I=4.085*10**8 //mm**4 //M.I
A=20732.0 //mm**2 //area of column
f_y=250 //N/mm**2 
L=6000 //mm //Length of column

//Calculations

k=(I*A**-1)**0.5 //mm
lamda=L*k**-1 //Slenderness ratro

//From Indian standard table
lamda_1=40 
sigma_a_c_1=139 //N/mm**2
lamda_2=50 
sigma_a_c_2=132 //N/mm**2 

//Linearly interpolating between these values for lambda=42.744

sigma_a_c_3=sigma_a_c_1-2.744*10**-1*(sigma_a_c_1-sigma_a_c_2)

//Safe Load carrying capacity of column
P=sigma_a_c_3*A*10**-3

//Result
printf("\n Safe Load carrying capacity is %0.2f  KN",P)
