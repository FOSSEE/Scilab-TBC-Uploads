////Given
n1=3
n2 =1
E=13.6                                  //ev

//Calculation
E1=E/(3.0**2)                            //Binding energy of the atom in n=3 state
energy=E-E1                              //Energy required for the atomic electron to jump from n=1 to n=3 state

//Result
printf("\n The electron beam must, therefore be accelerated through a potential difference of  %0.2f V",energy)
