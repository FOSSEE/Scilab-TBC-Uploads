clear;
clc;

//Example - 1.3
//Page number - 13
printf("Example - 1.3 and Page number - 13\n\n");

// Given
P1 = 3;// [bar]  - initial pressure
V1 = 0.5;// [m^(3)] - initial volume
V2 = 1.0;// [m^(3)] - final volume

//(a)
n = 1.5;

//Let P*V^(n)=C //Given relation
//W (work done per mole)= (integrate('P','V',V1,V2))
//W = (integrate('(C/V^(n))','V',V1,V2)) = (C*((V2^*(1-n))-(V1^*(1-n))))/(1-n)
//Where   C=P*V^(n)=P1*V1^(n)=P2*V2^(n)
//Thus  w=((P2*V2^(n)*V2^(1-n))-(P1*V1^(n)*V1^(1-n)))/(1-n)
//w = ((P2*V2^(n))-(P1*V1^(n)))/(1-n)
//and thus    W=((P2*V2)-(P1*V1))/(1-n)
//The above expression is valid for all values of n,except n=1.0
P2 = (P1*((V1/V2)^(n)));//[bar] //pressure at state 2

//we have,(V1/V2)=(V1t/(V2t),since the number  of moles are constant.Thus
W = ((P2*V2)-(P1*V1))/(1-n)*10^(5);//[J]
W = W/1000;//[kJ]
printf(" (a).The work done (for n=1.5) is %f kJ\n",W);

//(b)
//For n=1.0,we have, PV=C.
// w(wok done per mol)= (integrate('P','V',V1,V2)) = (integrate('C/V','V',V1,V2)) = C*ln(V2/V1)=P1*V1*ln(V2/V1)
W1 = P1*V1*log(V2/V1)*10^(5);//[J]
W1 = W1/1000;//[kJ]
printf(" (b).The work done (for n=1.0) is %f kJ\n",W1);

//(c)
//For n=0,we get P=Constant and thus
P = P1;//[bar]
// w =(integrate('P','V',V1,V2)) = P*(V2-V1)
W2 = P*(V2-V1)*10^(5);//[J]
W2 = W2/1000;//[kJ]
printf(" (c).The work done (for n=0) is %f kJ\n\n",W2);
