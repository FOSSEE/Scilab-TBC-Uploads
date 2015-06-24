//clear//
//Caption:Encoder for the (7,4) Cyclic Hamming Code
//Example8.4:Encoder for the (7,4) Cyclic hamming code
//message sequence = [1,0,0,1]
//D = poly(0,D);
D = poly(0,'D');
g = 1+D+0+D^3; //generator polynomial
m = (D^3)*(1+0+0+D^3); //message sequence
[r,q] = pdiv(m,g);
p = coeff(r);
disp(r,'remainder in polynomial form')
disp(p,'Parity bits are:')
disp('Table 8.3 Contents of the Shift Register in the Encoder of fig8.7 for Message Sequence(1001)')
disp('__________________________________________________________________________________________')
disp('Shift            Input            Register Contents')
disp('__________________________________________________________________________________________')
disp('1                  1              1 1 0')
disp('2                  0              0 1 1')
disp('3                  0              1 1 1')
disp('4                  1              0 1 1')
disp('____________________________________________________________________________________________')     
