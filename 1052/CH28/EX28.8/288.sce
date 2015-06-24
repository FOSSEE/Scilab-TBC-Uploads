clc;
//Example 28.8
//page no 436
printf("Example 28.8 page no 436\n\n");
//we have to determine the siaze an aerobic digester to treat the solids 
m=1000//mass of solid that is generate by municipality,lb
OL=0.2//organic loading,lbcs/ft^3.day
VS=.78//volatile solids
V_ol=m*VS/OL//volume based on organic loading
printf("\n volume based on organic loading V_ol=%f ft^3",V_ol);
t_h=20//detention time hydraulic, days
TS=0.044//percentage solids enterning digester
V_hl=m*t_h/(TS*8.33*7.48)//volume based on hydrulic load
printf("\n volume based on hyraulic load V_hl=%f ft^3",V_hl);
//since V_hl >V_ol,the hdraulic time controls and the design volume is V_hl
