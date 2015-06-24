//variable initialization
N=2                                                                             //no. of particles
n1=2                                                                            //occupation no. of particles
g1=3                                                                            //degeneracy of particles

//(i) particles are distinguishable
state1=(factorial(N)*g1^n1)/factorial(n1);                                      //possible microstates of distinguishable particles

//(ii) particles are indistinguishable bosons
state2=factorial(n1+g1-1)/(factorial(n1)*factorial(g1-1));                      //possible microstates of indistinguishable bosons

//(iii) particles are indistinguishable fermions
state3=factorial(g1)/(factorial(n1)*factorial(g1-n1));                          //possible microstates of indistinguishable fermions

printf("\n(i) Ω(distinguishable) = %.0f\n(ii) Ω(indistinguishable bosons) = %.0f\n(iii) Ω(indistinguishable fermions) = %.0f",state1,state2,state3);
