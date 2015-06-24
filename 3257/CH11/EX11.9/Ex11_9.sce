// Dimensional changes during shaping of ceramic components
clc
L = 25 // length in mm
s_d = 0.09 // drying shrinkage
s_f = 0.05 // firing shrinkage
p_f = 4 //porosity of fired part
printf("\n Example 11.9")
printf("\n\n Part A:")
L_d = L/(1-s_f)
L_o = (1+s_d)*L_d
printf("\n Initial length of part is %.2f mm.",L_o) 
printf("\n Part B:")
Va_Vd = (1-p_f/100)/(1/(1-s_f)^3)
printf("\n Porosity P_d of dried part is %.2f%%.",(1-Va_Vd)*100) // Answer in book is 18%

