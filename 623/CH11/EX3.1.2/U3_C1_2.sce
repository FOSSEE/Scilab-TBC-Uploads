//variable initialization
N=4                                                                             //no. of particles
A1=[2 0 0 2];                                                                   //possible macrostate
A2=[1 1 1 1];                                                                   //possible macrostate
A3=[0 3 0 1];                                                                   //possible macrostate
A4=[1 0 3 0];                                                                   //possible macrostate
A5=[0 2 2 0];                                                                   //possible macrostate
g1=1                                                                            //degeneracy of particles
g2=2                                                                            //degeneracy of particles
g3=2                                                                            //degeneracy of particles
g4=1                                                                            //degeneracy of particles

//(i) particles are distinguishable
printf("\n(i)Possible macrostates are\n ");
disp(A5,A4,A3,A2,A1);
micro1=((factorial(N)*g1^A1(1)*g2^A1(2)*g3^A1(3)*g4^A1(4))/(factorial(A1(1))*factorial(A1(2))*factorial(A1(3))*factorial(A1(4))));     //The number of microstates
micro2=((factorial(N)*g1^A2(1)*g2^A2(2)*g3^A2(3)*g4^A2(4))/(factorial(A2(1))*factorial(A2(2))*factorial(A2(3))*factorial(A2(4))));     //The number of microstates
micro3=((factorial(N)*g1^A3(1)*g2^A3(2)*g3^A3(3)*g4^A3(4))/(factorial(A3(1))*factorial(A3(2))*factorial(A3(3))*factorial(A3(4))));     //The number of microstates
micro4=((factorial(N)*g1^A4(1)*g2^A4(2)*g3^A4(3)*g4^A4(4))/(factorial(A4(1))*factorial(A4(2))*factorial(A4(3))*factorial(A4(4))));     //The number of microstates
micro5=((factorial(N)*g1^A5(1)*g2^A5(2)*g3^A5(3)*g4^A5(4))/(factorial(A5(1))*factorial(A5(2))*factorial(A5(3))*factorial(A5(4))));     //The number of microstates
printf("\nMost probable macrostates are\n ");
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

//(ii) particles are indistinguishable bosons
printf("\n(ii)Possible macrostates are\n ");
disp(A5,A4,A3,A2,A1);
micro1=(factorial(A1(1)+g1-1)*factorial(A1(2)+g2-1)*factorial(A1(3)+g3-1)*factorial(A1(4)+g4-1))/(factorial(A1(1))*factorial(A1(2))*factorial(A1(3))*factorial(A1(4))*factorial(g1-1)*factorial(g2-1)*factorial(g3-1)*factorial(g4-1));
micro2=(factorial(A2(1)+g1-1)*factorial(A2(2)+g2-1)*factorial(A2(3)+g3-1)*factorial(A2(4)+g4-1))/(factorial(A2(1))*factorial(A2(2))*factorial(A2(3))*factorial(A2(4))*factorial(g1-1)*factorial(g2-1)*factorial(g3-1)*factorial(g4-1));
micro3=(factorial(A3(1)+g1-1)*factorial(A3(2)+g2-1)*factorial(A3(3)+g3-1)*factorial(A3(4)+g4-1))/(factorial(A3(1))*factorial(A3(2))*factorial(A3(3))*factorial(A3(4))*factorial(g1-1)*factorial(g2-1)*factorial(g3-1)*factorial(g4-1));
micro4=(factorial(A4(1)+g1-1)*factorial(A4(2)+g2-1)*factorial(A4(3)+g3-1)*factorial(A4(4)+g4-1))/(factorial(A4(1))*factorial(A4(2))*factorial(A4(3))*factorial(A4(4))*factorial(g1-1)*factorial(g2-1)*factorial(g3-1)*factorial(g4-1));
micro5=(factorial(A5(1)+g1-1)*factorial(A5(2)+g2-1)*factorial(A5(3)+g3-1)*factorial(A5(4)+g4-1))/(factorial(A5(1))*factorial(A5(2))*factorial(A5(3))*factorial(A5(4))*factorial(g1-1)*factorial(g2-1)*factorial(g3-1)*factorial(g4-1));
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

//(iii) Particles are indistinguishable fermions
printf("\n(iii)Possible macrostates are\n ");
disp(A5,A2);
micro2=4/(factorial(A2(1))*factorial(A2(2))*factorial(A2(3))*factorial(A2(4))*factorial(g1-A2(1))*factorial(g2-A2(2))*factorial(g3-A2(3))*factorial(g4-A2(4)));
micro5=4/(factorial(A5(1))*factorial(A5(2))*factorial(A5(3))*factorial(A5(4))*factorial(g1-A5(1))*factorial(g2-A5(2))*factorial(g3-A5(3))*factorial(g4-A5(4)));
printf("\nMost probable macrostate is\n ");
if(micro2>=micro5) then
    disp(A2);
end
if(micro5>=micro2) then
    disp(A5);
end
