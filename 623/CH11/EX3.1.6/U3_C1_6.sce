function[micro]=p(A)                                                            //function to calculate no. of microstates
    micro=1;
    i=1
    for i=1:5
        micro=micro*(6/(factorial(A(i))*factorial(3-A(i))));
    end
endfunction

//variable initialization
A1=[3 2 0 0 1];                                                                 //possible macrostate
A2=[3 1 1 1 0];                                                                 //possible macrostate
A3=[2 3 0 1 0];                                                                 //possible macrostate
A4=[3 0 3 0 0];                                                                 //possible macrostate
A5=[2 2 2 0 0];                                                                 //possible macrostate

//calculation
p1=p(A1);                                                                       //no. of microstates
p2=p(A2);                                                                       //no. of microstates
p3=p(A3);                                                                       //no. of microstates
p4=p(A4);                                                                       //no. of microstates
p5=p(A5);                                                                       //no. of microstates

printf("\nPossible microstates are : %.0f, %.0f, %.0f, %.0f, %.0f",p1,p2,p3,p4,p5);
printf("\nThe thermodynamic probability of the system = %.0f",p1+p2+p3+p4+p5);
