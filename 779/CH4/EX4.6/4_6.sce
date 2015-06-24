// Process 1-2
Q12 = 235; // in KJ/Kg
W12 = 0 ;
U12 = Q12-W12;
// Process 2-3
Q23 = 0; 
U23 = -70 ;
W23 = Q23-U23;
// Process 3-1
Q31 = - 200; 
U31 = -U12-U23;
W31 = Q31-U31;
//
W = W12 + W23 + W31;
Q = Q12 + Q23 + Q31;
disp("KJ/Kg",Q,"Heat trasfer in the cycle is")
disp("KJ/Kg",W,"Work done during the the cycle is")