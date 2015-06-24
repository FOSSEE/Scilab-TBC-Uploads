clc
//given that
del_x = 1 // let uncertainty in position is unity
m_e = 9.1e-31 // mass of electron in kg
m_p = 1.67e-27 // mass of proton in kg
h = 6.63e-34 // Plank constant
printf("Example 2.7")
h_bar = h / (2*%pi) // constant
del_v_ratio = m_p/m_e // calculation in uncertainties in the velocity of electron and proton
printf("\n Ratio of uncertainties in the velocity of electron to proton is %d.\n\n\n",del_v_ratio)
