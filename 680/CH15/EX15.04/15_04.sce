//Problem 15.04:

//initializing the variables:
A = 10;
B = 100000;

//calculation:
// Since there are two contributing factors to the cost model, one may write the \n following equation for the profit, P
//P = A(t - tc) - B/(TH - t);
TH = 500 
tc = 100
//For breakeven operation, set P = 0 so that
//(t - tc)*(TH - t) = B/A
//This may be rewritten as
//t^2 - (TH + tc)*t + [(B/A) + TH*tc] = 0
//The solution to this quadratic equation for A and B, is
t1 = (TH+tc)/2 + ([(TH+tc)^2 - 4*1*(B/A + TH*tc)]^0.5)/2
t2 = (TH+tc)/2 - ([(TH+tc)^2 - 4*1*(B/A + TH*tc)]^0.5)/2
//To maximize the profit, take the first deriative of P with respect to t and set it equal to zero, i.e.,
//dP/dt = A - B/(TH - t)^2 = 0
//Solving,
//(TH - t)^2 = B/A
t = TH - (B/A)^0.5
//Upon analyzing the first derivative with t values greater than and less than 400 degF, one observes\n that the derivative changes sign from + ---> - at about t = 400, indicating a relative maximum.
//Similarly, for A = 10, B = 4000,
//tBE = 499 degF, 101 degF
//tmax = 480 degF
//For A = 10, B = 400,000,
//tBE = 300 degF
//tmax = 300 degF
//Graphical results for the three scenarios is shown in Fig. 15.2.

printf("\n\nResult\n\n")
printf("\n Graphical results for the three scenarios is shown in Fig 15.2")
