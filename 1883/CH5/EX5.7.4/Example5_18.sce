//Chapter-5,Example5_7_4,pg 5-27

uncertainty=1*10^-2                                          //as uncertainty is 1%

m=9.1*10^-31                                         //mass of an electron

h=6.63*10^-34                                        //Plancks constant

v=1.88*10^6                                          //speed of an electron

delta_v=uncertainty*v                                             //error in measurement of speed 

delta_x=h/(4*%pi*m*delta_v)                                    //By Heisenberg's uncertainty priciple

printf("\nThe accuracy in position of an electron  Delta_x =\n")

disp(delta_x)

printf("meter\n")
