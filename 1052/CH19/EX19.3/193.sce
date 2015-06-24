clc;
//Example 19.3
//page no 251
printf("Example 19.3 page no 251\n\n");
//refer to example 19.3 
S=0.785//cross sectional area,ft^2
v_av=24.4//average velocity,ft/s
q=v_av*S*60//flow rate,factor 60 for minute
printf("\n flow rate q=%f ft^3 min",q);
rho=0.075//density 
m_dot=q*rho*60//mass flow rate 
printf("\n m_dot mass flow rate=%f lb/hr",m_dot);
