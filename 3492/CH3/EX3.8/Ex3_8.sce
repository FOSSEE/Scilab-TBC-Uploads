clc
//Chapter3
//Ex_8
//Given
h_bar=1.054*10^-34 // in J s
delta_x=0.1*10^-9 //in m
m_e=9.1*10^-31 //in Kg
delta_Px=h_bar/delta_x
disp(delta_Px,"uncertainity in momemtum in Kg m/s is")
delta_v=delta_Px/m_e
KE=delta_Px^2/(2*m_e)
disp(KE,"Uncertainity in Kinetic Energy in J is")
