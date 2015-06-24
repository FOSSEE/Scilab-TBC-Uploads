//Chapter-3,Example 2,Page 56
clc;
close;

m_alpha=6.646*10^-24    //mass of one alpha particle

n= 2300 // number of alpha particles

M=1*10^-6  //mass of plutonium

//as -(dM/dt)= lamda*M 
//also (dM/dt)= n*m_alpha

lamda=n*m_alpha/M

t_half= 0.693/lamda   //half life of Plutonium

printf('the half life of Plutonium is %.f years', t_half)

//mistake in text book
