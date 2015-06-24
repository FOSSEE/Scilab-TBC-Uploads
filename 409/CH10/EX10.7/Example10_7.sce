clear ;
clc;
// Example 10.7
printf('Example 10.7\n\n');
// Page no. 286
// Solution

C3H8 = 20 ;//C3H8 burned in a test-[kg]
m_C3H8 = 44.09 ;// mol. wt . of 1 kmol C3H8
cf_O2 = 5 ;// coefficient of O2 in given reaction
air = 400 ;// Air given -[kg]
m_air = 29 ;// molecular wt. of  1kmol air-[kg]
O2p = 21 ;// percentage of O2 in air-[%]
p_CO2 =  44 ;// CO2 produced -[kg]
p_CO = 12 ;//  CO produced -[kg]
O2 = (air*O2p/100)/(m_air) ;// amount of entering O2-[k mol]
rqO2 = (C3H8*cf_O2)/(m_C3H8) ;// Required O2 for given reaction
ex_air = ((O2-rqO2)*100)/rqO2 ;// Excess air percent-[%]
printf('Excess air percent is %.0f %%.\n',ex_air);