//variable initialization
v=10000                                                                         //speed of object (meter/second)
accu_v=0.0001                                                                   //accuracy of speed of object
m_b=0.05                                                                        //mass of the bullet (kg)
h=1.054*10^-34;                                                                 //planck's constant (joule-second)
m_e=9.1*10^-31;                                                                 //mass of electron (kg)

//(a) fundamental accuracy of position for bullet
p_b=m_b*v;                                                                      //momentum of bullet (kg m/s)
p_uncer_b=p_b*accu_v;                                                           //uncertainty in momentum of bullet (kg m/s)
x_uncer_b=h/p_uncer_b;                                                          //minimum uncertainty in position of bullet (meter)

//(b) fundamental accuracy of position for electron
p_e=m_e*v;                                                                      //momentum of electron (kg m/s)
p_uncer_e=p_e*accu_v;                                                           //uncertainty in momentum of electron (kg m/s)
x_uncer_e=h/p_uncer_e;                                                          //uncertainty in position of electron (meter)

printf("\n(a) uncertainty in position of bullet = %.1e meter\n(b) uncertainty in position of electron = %.6f meter\n   The uncertainty in bullet’s position is so small that it is far beyond the possibility of measurement.",x_uncer_b,x_uncer_e);

//Note:The answers given in the book are wrong. Also in the solution they have used speed=1000 while in the question it is given to be equal to 10000.
