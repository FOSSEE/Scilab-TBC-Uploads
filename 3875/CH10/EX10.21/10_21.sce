clc;
clear;
KE=10*1.6*10^-19 //energy in J
m=9.1*10^-31 //mass in kg
h=6.63*10^-34 //Plancks constant in J-s
m_h=2*10^-3 //molecular weight of hydrogen in kg
a=6.023*10^23 //Avogadros constant in mol^-1
v=2200 //velocity in m/s
m_g=45*10^-3 //mass of golf ball in kg]
v_g=22 //velocity of golf ball in m/s

//calculation
//case (a)
lambda=(h/sqrt(2*m*KE))
mprintf("The de-Broglie wavelength is = %1.3e m or 0.388 nm\n",lambda)

//case (b)
m=m_h/a //mass in kg
lambda=(h/(m*v))
mprintf("The de-Broglie wavelength is = %1.2e m or 0.988 nm\n",lambda) //The answer provided in the textbook is wrong.

//case (c)
lambda1=h/(m_g*v_g)
mprintf("The de-Broglie wavelength of the golf ball is = %1.1e m",lambda1)
