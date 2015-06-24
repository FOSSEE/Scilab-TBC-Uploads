//a
Ri = 1; 
Rf = 39;
A = 10^5; //open loop gain of the op-amp
G = A/(1 + (A*Ri/(Ri+Rf))); //actual voltage gain of the circuit 
disp("a")
disp(G,"actual voltage of the circuit =")

//b
G1 = 1 + (Rf/Ri); // voltage gain of the circuit with infinite open loop gain
disp("b")
disp(G1,"for ideal case the voltage gain =")

//c
er = ((G1 - G)/G)*100; //percent error 
disp("c")
disp(er,"percent error of the ideal value compared to the actual value=")