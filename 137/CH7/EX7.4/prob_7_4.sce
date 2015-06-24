clc;
// page no 334
//PROB NO 7.4 a) Find detection error probability
//Given: Ap=1mV, 6n=192.3uV
// The formula for polar case is given by Ap/6n
Ap=1;sigma_n=192.3;
x=Ap/sigma_n;//here we have to find the value of P(e)=Q(x) from the table10.2 given on page no. 454
disp(x);
Q1=(0.9964)*10^(-7);
disp(Q1,"error probability = ");//this is nearly equal to zero

//PROB NO 7.4 b) Find detection error probability.
//In this case, only half the bits are transmitted by no pulse, there are, on the average, only half as many pulses in the on-off case(compared to the polar). 
//To maintain the same power,we need to double the energy  of each pulse in the on-off or the bipolar case(compared to the polar).
//Now, doubling the pulse energy is accomplished by multiplying the pulse by sqrt(2).
//Thus, for on-off Ap is sqrt(2) times the Ap in the polar case,that is, Ap=sqrt(2)*10^-3
x=Ap/2*sigma_n;//here we have to find the value of P(e)=Q(x) from the table10.2 given on page no. 454
disp(x);
Q2=(1.166)*10^-4;
disp(Q2,"error probability = ");
//for a given power , the Ap for both the on-off and the bipolar  cases are identical. Hence P(e)=1.5 Q(x);
Q3=1.5*Q2;
disp(Q3,"error probability = ");