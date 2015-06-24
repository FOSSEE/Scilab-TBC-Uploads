//Section-9,Example-4,Page no.-E.39
//To find the energy obtainable from lead storage battery in which given amount of lead is consumed.
clc;
E0_cell=2.01
n=2
C_H=20
C_SO4=10
E_cell=E0_cell-((0.0592/2)*log10(1/((C_H^4)*(C_SO4^2))))
q=0.100*2*96500
E=q*E_cell
disp(E,'Energy obtained(kJ)')
