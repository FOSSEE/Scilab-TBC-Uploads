//Chapter-5,Example5_7_1,pg 5-26

unc=1*10^-4                                          //as uncertainty is 0.01%

m=9.1*10^-31                                         //mass of an electron

h=6.63*10^-34                                        //Plancks constant

v=400                                                //speed of an electron

delta_v=unc*v                                             //error in measurement of speed 

delta_x=h/(4*%pi*m*delta_v)                                    //By Heisenberg's uncertainty priciple

printf("\nThe accuracy in position of an electron  Delta_x = %.5f m\n",delta_x)
