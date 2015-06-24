
//calculate the speed of the machine when running
N1=1000  //speed of generator
E1=205.06  //emf generator
E2=195.06  //emf of motor
N2=(E2*N1)/E1  //speed of generator
disp('speed of motor='+string(N2)+'rpm')
