// Density of metal powder lubricant mix
clc
m_fe = 1000 // mass of iron in gram
m_l = 25 // mass  in gram
d_fe = 7.86 // density of iron in gram/cc
d_l = 1.2 // density of lubricant in gram/cc
d_ap = 2.75 // apparent density in gram/cc
m_L = 30 // mass of lubricant in gram
printf("\n Example 11.2")
V = m_fe/d_fe + m_l/d_l // Combined volume in CC
w = m_fe + m_L // combined mass in gram
d_th = w/V // theoretical density in gram/cc  
d_m_ap = d_ap/d_fe*d_th // apparent density of mix

printf("\n Apparent density of metal powder lubricant mix is %.2f g/cm^3.",d_m_ap) // Answer in book is 2.42 g/cm^3

