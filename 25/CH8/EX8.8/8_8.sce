// example:-8.8,page no.-428.
// design a three section 20 db coupler with a binomial response.
Zo=50;f=3*10^9;N=3;
syms C C1 C2 theta;
C=10^(-20/20);
disp("for a maximally flat response for a three=section coupler doupble derivative of C will be zero.")
C1=0.0125;C2=0.125;C3=0.0125;
Zoe1=Zo*sqrt((1+C1)/(1-C1));
Zoe3=Zo*sqrt((1+C3)/(1-C3));
Zoo1=Zo*sqrt((1-C1)/(1+C1));
Zoo3=Zo*sqrt((1-C1)/(1+C1));
Zoe2=Zo*sqrt((1+C2)/(1-C2));
Zoo2=Zo*sqrt((1+C2)/(1-C2));
disp("the even and odd mode characteristic impedences for each section are = ")
disp(Zoe1,'Zoe1 = ')
disp(Zoo1,'Zoo1 = ')
disp(Zoe2,'Zoe2 = ')
disp(Zoo2,'Zoo2 = ')
disp(Zoe3,'Zoe3 = ')
disp(Zoo3,'Zoo3 = ')