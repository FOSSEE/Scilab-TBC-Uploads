//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 6.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


reser_catch_area=50;                                                   //Catchment area of reservoir in km^2
avg_rainfall=150;                                                      //Average rainfall in cm/year
station_head=40;                                                       //Mean head of station in m
UF=0.75;                                                               //Utilization factor 
LF=0.75;                                                               //Load factor 
tur_eff=0.88;                                                          //Efficiency of turbine 
gen_eff=0.93;                                                          //Efficiency of generator 
water_volume=reser_catch_area*10^6*1.5*UF;                             //Available water for electricity production in m^3
Q=water_volume/(365*24*60*60);                                         //Available quantity in m^3/sec
P=(0.736/75)*Q*1000*station_head*tur_eff*gen_eff;                      //Power of station in kW
install_cap_gen=P/LF;                                                  //Generator installed capacity in kW

printf("\nThe power is %.2f kW",P);
printf("\nInstalled capacity of the generator is %.f kW",install_cap_gen);
                                                                                   //variation present in result due to wrong calculation of Q value
