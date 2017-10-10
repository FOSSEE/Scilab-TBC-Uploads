
//Chapter-3,Example 1,Page 56
clc;
close;

M_0=200  //mass of radium

total_time= 8378-1898   //in years

//since t-half for radium is 1620 years

t_half=6480/1620  // number of half lives

m_left=M_0*(1/2)^t_half   //mass of radium left

printf('mass of radium left after 6480 years is %.1f mg',m_left)
