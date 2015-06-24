//vairable initialization
N=4                                                                             //no. of particles
A1=[4 0];                                                                       //possible macrostate
A2=[3 1];                                                                       //possible macrostate
A3=[2 2];                                                                       //possible macrostate
A4=[1 3];                                                                       //possible macrostate
A5=[0 4];                                                                       //possible macrostate

//calculation
printf("\nPossible macrostates are\n ");
disp(A5,A4,A3,A2,A1);
micro1=factorial(N)/(factorial(A1(1))*factorial(A1(2)));                        //no. of microstate corresponding to macrostate1
micro2=factorial(N)/(factorial(A2(1))*factorial(A2(2)));                        //no. of microstate corresponding to macrostate2
micro3=factorial(N)/(factorial(A3(1))*factorial(A3(2)));                        //no. of microstate corresponding to macrostate3
micro4=factorial(N)/(factorial(A4(1))*factorial(A4(2)));                        //no. of microstate corresponding to macrostate4
micro5=factorial(N)/(factorial(A5(1))*factorial(A5(2)));                        //no. of microstate corresponding to macrostate5
printf("\nTotal no. of microstates are %.0f",micro1+micro2+micro3+micro4+micro5);
printf("\nMost probable macrostate is\n ");
if(micro1>=micro2 & micro1>=micro3 & micro1>=micro4 & micro1>=micro5) then
    disp(A1);
end
if(micro2>=micro1 & micro2>=micro3 & micro2>=micro4 & micro2>=micro5) then
    disp(A2);
end
if(micro3>=micro1 & micro3>=micro2 & micro3>=micro4 & micro3>=micro5) then
    disp(A3);
end
if(micro4>=micro1 & micro4>=micro2 & micro4>=micro3 & micro4>=micro5) then
    disp(A4);
end
if(micro5>=micro1 & micro5>=micro2 & micro5>=micro3 & micro5>=micro4) then
    disp(A5);
end
