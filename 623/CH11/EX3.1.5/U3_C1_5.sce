function[probability]=p(A)                                                      //function to calculate probability
    probability=1;
    i=1
    for i=1:7
        probability=probability*(factorial(A(i)+2)/(2*factorial(A(i))));
    end
endfunction

//variable initialization
A1=[5 0 0 0 0 0 1];                                                             //possible macrostate
A2=[4 1 0 0 0 1 0];                                                             //possible macrostate
A3=[4 0 1 0 1 0 0];                                                             //possible macrostate
A4=[3 2 0 0 1 0 0];                                                             //possible macrostate
A5=[4 0 0 2 0 0 0];                                                             //possible macrostate
A6=[3 1 1 1 0 0 0];                                                             //possible macrostate
A7=[2 3 0 1 0 0 0];                                                             //possible macrostate
A8=[3 0 3 0 0 0 0];                                                             //possible macrostate
A9=[2 2 2 0 0 0 0];                                                             //possible macrostate
A10=[1 4 1 0 0 0 0];                                                            //possible macrostate
A11=[0 6 0 0 0 0 0];                                                            //possible macrostate

//calculation
p1=p(A1);                                                                       //Thermodynamic probability of macrostate 1
p2=p(A2);                                                                       //Thermodynamic probability of macrostate 2
p3=p(A3);                                                                       //Thermodynamic probability of macrostate 3
p4=p(A4);                                                                       //Thermodynamic probability of macrostate 4
p5=p(A5);                                                                       //Thermodynamic probability of macrostate 5
p6=p(A6);                                                                       //Thermodynamic probability of macrostate 6
p7=p(A7);                                                                       //Thermodynamic probability of macrostate 7
p8=p(A8);                                                                       //Thermodynamic probability of macrostate 8
p9=p(A9);                                                                       //Thermodynamic probability of macrostate 9
p10=p(A10);                                                                     //Thermodynamic probability of macrostate 10
p11=p(A11);                                                                     //Thermodynamic probability of macrostate 11

printf("\nP1 = %.0f, P2 = %.0f, P3 = %.0f, P4 = %.0f, P5 = %.0f, P6 = %.0f, P7 = %.0f, P8 = %.0f, P9 = %.0f, P10 = %.0f, P11 = %.0f",p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11);
printf("\nThermodyanmic probability of the system = %.0f",p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+p11);
