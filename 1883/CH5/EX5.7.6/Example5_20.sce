//Chapter-5,Example5_7_6,pg 5-29

h=6.63*10^-34                                                           //Plancks constant

e=1.6*10^-19                                                            //charge of an electron

delta_t=1.4*10^-10                                                           //time spent in excited state

delta_E=h/(4*%pi*delta_t*e)                                                       //By Heisenberg's uncertainty principle (delta_E*delta_t)>= h/(4*%pi)

printf("\nThe uncertainty in energy of Iradium in the excited state  Delta_E = %.8f eV\n",delta_E)
