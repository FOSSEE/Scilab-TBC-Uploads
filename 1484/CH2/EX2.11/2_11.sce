clc 
//initialisation of variables
W= 5000 //tons
I= 1.4*10^6 //ft^4
k= 12.2 //ft
BG= 6.5 //ft
//CALCULATIONS
BM= I*64/(W*2240)
GM= BM-BG
T= 2*%pi*sqrt(k^2/(GM*32.2))
//RESULTS
printf ('period of oscialltion= %.2f sec ',T) 
