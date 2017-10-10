// Problem 3.12,Page no.61

clc;clear;
close;

P=500 //KN //Safe Load
d=20 //mm //steel rod diameter
n=4 //number of steel rod
sigma_c=4 //N/mm**2 //stress in concrete 
//E_S*E_c**-1=15


//Calculations

A_s=4*%pi*4**-1*d**2 //mm**2 //Area os steel rod
sigma_s=15*sigma_c //N/mm**2 //stress in steel

//P=sigma_s*A_s+sigma_c*A_c 

//After substituting and simplifying above equation we get,

A_c=(P*10**3-sigma_s*1256)*(sigma_c)**-1 //mm**2 //Area of the concrete
X=(A_s+A_c)**0.5 //mm //Total cross sectional area
P_s=A_s*sigma_s*10**-3 //KN //Load carried by steel

//Result
printf("Load carried by steel is %.2f kN",P_s)
printf("\n stress induced in steel is %.2f kN",sigma_s)
printf("\n cross sectional area of column is %.2f mm",X)
