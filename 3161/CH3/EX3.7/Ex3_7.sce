clc;
//page 185
//problem 3.7

//Given input inmedance of matching networkis R1 = 10 ohm & output impedance of matching networ is R2 = 50 ohm & carrier frequency is fc = 500 KHz
R1 = 10
R2 = 50
fc = 500000

//Wc = 2*pi*fc
Wc = 2*%pi*fc

//AS R1 = R2*(X2^2)/[(R2^2)+(X2^2)], X2 = 25ohm
X2 = 25

//AS X1 = (R2^2)*X2/[(R2^2)+(X2^2)] & R1>R2, X1 = -20ohm
X1 = -20

//|X1| = |jwL| = wL = 20 & |X2| = |1/jwC| = 1/wC = 25, so |X1*X2| = L/C = 500 denotes as LC_div
LC_div = 500

//Wc^2 = 1/(L*C). LC is denoted as LC_prod
LC_prod = 1/(Wc^2)

//In the textbook the calculated LC = 10^-3, in reality the value of LC = 1.013D-13
 
L = sqrt(LC_div*LC_prod)

//In the textbook the calculated L^2 = 50*10^-14, in reality the value of L^2 = 5.066D-11  
 
C = L/500

//In the textbook the calculated C = 1.4*10^-9, in reality the value of C = 1.424D-08  

disp('Inductance '+string(L)+' H')
disp('Capacitance '+string(C)+' F')
