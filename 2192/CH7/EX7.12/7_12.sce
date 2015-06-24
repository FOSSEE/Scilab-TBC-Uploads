clc,clear
printf('Example 7.12\n\n')

//nickel
m=18.528*10^-3 //weight of nickel
I=100 //current in amperes
T=10*60 //time in seconds
ECE_Ni=m/(I*T) //in kg/C

//copper
I_Cu=50
T_Cu=6*60
CE_Cu=63.18; CE_Ni=58.6;//chemical equivalents
ECE_Cu= ECE_Ni*((CE_Cu/2)/(CE_Ni/2)) //bothare bivalent
m_Cu= ECE_Cu * I_Cu*T_Cu 

printf('Weight of copper deposited = %f grams',1000*m_Cu)
