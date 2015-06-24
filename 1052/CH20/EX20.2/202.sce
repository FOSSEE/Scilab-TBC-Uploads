clc;
//Example 20.2
//page no 269
printf("\n Example 20.2 page no 269\n\n");
//ventilation required in an indoor work area where a toluene containing adhesive in a nanotechnology process is used.
//equation  for estimate the dilution air requirement 
C_a=80e-6//concentration of toluene
q=3/8//volumatric flow rate, gal/h
v=0.4//adhesive contains 4 volume % toluene
S_g=0.87//specific gravity
printf("\n C_a concentration of toluene=%f \n q  volumatric flow rate q=%f gal/h \n S_g specific gravity=%f ",C_a,q,S_g);
//mass flow rate of toluene 
m_dot_tol=q*v*S_g*(8.34)//factor 8.34 for lb
printf("\n mass flow rate m_dot-tol=%f lb/h",m_dot_tol);
m_dot_g=m_dot_tol*(454/60)//unit conversion of mass flow rate in g/min
printf("\n mass flow rate in g/min m_dot_g=%f g/min",m_dot_g);
M_w=92//molecular weight of toluene
n_dot_tol=m_dot_g/M_w//no. of gm moles of toluene/min
printf("\n no. of moles n_dot_tol=%f gmol/min",n_dot_tol);
//resultant toluene vapor volumatric flow rate q_tol is directly calculated from th eidal gas law
//applying ideal gas law
R=0.08206//gas constant 
P=1//standard pressure
T=293//standard temperature
printf("\n R gas constant=%f atm.L/(gmol.K)\n T temperature=%f K\n P pressure =%f atm",R,T,P);
q_tol=n_dot_tol*R*T/P//toluene vapor volumatric flow rate 
printf("\n toluene vapor vol. flow rate q_tol=%f L/min",q_tol);
q_tol=2.15//round off value
//the required diluent volumatric flow rtae
K=5//dimensionless mixing factor 
q_dil=K*q_tol/(C_a)//diluent vol. flow rate
printf("\n diluent vol. flow rate q_dil=%f L/min",q_dil);
