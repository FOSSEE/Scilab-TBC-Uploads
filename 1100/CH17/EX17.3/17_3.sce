clc
//initialisation of variables
R= 53.31
T= 80 //F
P2= 90//psia
P1= 15 //psia
n= 1.4
cp= 0.240
nc= 0.95
n1= 1.3
//CALCULATIONS
Wk= (n/(n-1))*(R)*(T+460)*((P2/P1)^((n-1)/n)-1)
Wx= -Wk/nc
dh= cp*(T+460)*((P2/P1)^((n1-1)/n1)-1)
Q= dh+(Wx/778)
//RESULTS
printf ('Heat transferred= %.1f Btu/lb ',Q)
