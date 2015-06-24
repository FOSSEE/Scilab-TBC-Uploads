//variable initialization
a=214.6*100;                                                                    //(m-1)
b=0.6*100;                                                                      //(m-1)
h=6.6*10^-34;                                                                   //Plank's constant (joule second)
c=3*10^8;                                                                       //Speed of light (m/s)
no=1/(%e);                                                                      //number of molecules in state with respect to ground state
k=1.38*10^-23;                                                                  //Boltzmann constant (J K-1)

//Calculation
deltaE=h*c*(a-2*b);                                                             //difference in the energies of state 0 and state 1 (J)
T1=deltaE/k;                                                                    //temperature at which number of molecules in state 1 is 1/e times of state 0 (K)
T2=deltaE/(k*log(10));                                                          //temperature at which number of molecules in state 1 is 10% of state 0 (K)

printf("n(i) T = %.0f K\n(ii) T = %.0f K",T1,T2);
