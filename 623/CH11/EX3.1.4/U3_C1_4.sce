//variable initialization
N=4                                                                             //no. of particles
A1=[1 0 1 2];                                                                   //possible macrostate
A2=[0 2 0 2];                                                                   //possible macrostate
A3=[0 1 2 1];                                                                   //possible macrostate
A4=[0 0 4 0];                                                                   //possible macrostate

//calculation
printf("\nPossible macrostates are\n ");
disp(A4,A3,A2,A1);
micro1=factorial(N)/(factorial(A1(1))*factorial(A1(2))*factorial(A1(3))*factorial(A1(4)));                        //no. of microstate corresponding to macrostate1
micro2=factorial(N)/(factorial(A2(1))*factorial(A2(2))*factorial(A2(3))*factorial(A2(4)));                        //no. of microstate corresponding to macrostate2
micro3=factorial(N)/(factorial(A3(1))*factorial(A3(2))*factorial(A3(3))*factorial(A3(4)));                        //no. of microstate corresponding to macrostate3
micro4=factorial(N)/(factorial(A4(1))*factorial(A4(2))*factorial(A4(3))*factorial(A4(4)));                        //no. of microstate corresponding to macrostate4
printf("\nThe number of microstates belonging to the above macrostates is:%.0f, %.0f, %.0f, %.0f",micro1,micro2,micro3,micro4);
