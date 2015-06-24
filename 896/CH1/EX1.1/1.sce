clc
//let the total mass of mud be 100lbm
m_total=100;//lbm
//70% by wt of mud is sand(SiO2)and remaining is water
m_sand=0.7*m_total;//lbm
m_water=0.3*m_total;//lbm
rho_sand=165;//lbm/ft^3
rho_water=62.5;//lbm/ft^3
//rho=mass/volume
rho_mud=m_total/((m_sand/rho_sand)+(m_water/rho_water));
disp("The density of mud=")
disp(rho_mud)
disp("lbm/ft^3")