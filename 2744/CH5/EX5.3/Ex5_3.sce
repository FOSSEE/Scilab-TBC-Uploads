clear;
clc;
d = 16;// inches
I = 618;// inch units
l = 24;// feet
f = 15/2;// tons/in^2
Z = I/(d/2);// inch-units
M_r = f*Z;// ton-inches
//If the load is uniformly spread over its span,BM  = W*l/8
W1 = 8*M_r/(12*l);//tons
//If the load is concentrated at the centre,BM  = W*l/4
W2 = 4*M_r/(12*l);//tons
printf('If the load is uniformly spread over its span, then W is given by \n W = %.1f tons\n   = %.3f ton per foot run',W1,W1/l);
printf('\n If the load is concentrated at the centre, then W is given by\n W = %.2f tons',W2);
