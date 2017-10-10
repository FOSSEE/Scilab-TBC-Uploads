//ques-35.5
//Calculating reduced mass and moment of inertia of NaCl
clc
r=2.36*10^-10;//internuclear distance (in m)
m1=23*10^-3;//molar mass of Na (in kg/mol)
m2=35*10^-3;//molar mass of Cl (in kg/mol)
r_m=(m1*m2)/((m1+m2)*6.023*10^23);
m_i=r_m*r^2;
printf("The reduced mass of NaCl is %.3f*10^-26 kg and moment of inertia is %.3f*10^-45 kg m^2.",r_m*10^26,m_i*10^45);
