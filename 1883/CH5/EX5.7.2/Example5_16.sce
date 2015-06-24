//Chapter-5,Example5_7_2,pg 5-27

delta_x=10*10^-9                                            //position is located within this distance

h=6.63*10^-34                                          //plancks constant

delta_px=h/(4*%pi*delta_x)                                       //By Heisenberg's uncertainty priciple

E=1.6*10^-16                                           //Energy associated with an electron

m=9.1*10^-31                                           //mass of an electron

p=sqrt(2*m*E)                                          //momentum of an electron

percentage=delta_px*100/p                                         //percentage uncertainty in momentum

printf("\npercentage uncertainty in momentum of an electron = %.4f \n",percentage)
