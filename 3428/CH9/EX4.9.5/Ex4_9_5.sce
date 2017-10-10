//Section-4,Example-1,Page no.-I.21
//To calculate the force constant of the molecule.
clc;
m_c=19.9*10^-27
m_o=26.6*10^-27
c=3*10^10
v_bar=2140
mu_CO=((m_c*m_o)/(m_c+m_o))           //Reduced mass of CO(kg)
//v=((1/2*pi)*(k/mu)^1/2) and v_bar=((1/2*pi*c)*(k/mu)^1/2)
k=(4*%pi^2*c^2*v_bar^2*mu_CO)
disp(k,'Force constant of the molecule(N/m)')


