w3 = 2.3; w1 = 1.0;
w2 = w3-w1;
h1 = 2950.0;
// At 0.8MPa, 0.95 dry
x = 0.95;
hf = 721.11; hfg = 2048;
h2 = hf + (x*hfg);
h3 = ((w1*h1)+(w2*h2))/w3;
// Interpolation
H = [2769.1 2839.3];
T = [170.43 200];
t3 = interpln([H;T],2790);
s3 = 6.7087; 
s4 = s3;
x4 = (s3-1.7766)/5.1193;
h4 = 604.74+(x4*2133.8);
V4 = sqrt(2000*(h3-h4));
disp("degree",t3-T(1),"The condition of superheat after mixing")
disp("m/sec",V4,"The velocity of steam leaving the nozzle is")