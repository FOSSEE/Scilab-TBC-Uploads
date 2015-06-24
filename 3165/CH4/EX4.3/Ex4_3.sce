//Example 4 . 3
//To Design an Analog Butterworth Filter
clc ;
op =0.2* %pi ;
os =0.4* %pi ;
e1 =0.9;
l1 =0.2;
epsilon = sqrt (1/( e1 ^2) -1);
lambda = sqrt (1/( l1 ^2) -1);
N= log( lambda / epsilon )/ log (os/op);
disp ( ceil (N), ' Order o f the f i l t e r , N =' );
s=%s;
HS =1/(( s ^2+0.76537* s +1) *(s ^2+1.8477* s +1) ); // Transfer Function for N=4
oc=op/ epsilon ^(1/ ceil (N));
HS1 = horner (HS ,s/oc);
disp (HS1 , ' Normal i z ed Tr a n s f e r Func t ion , H( s ) =' );
