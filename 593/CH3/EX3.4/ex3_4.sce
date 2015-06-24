clear;
//clc();

// Example 3.4
// Page: 57
printf("Example-3.4  Page no.-57\n\n");


//***Data***//
T = 20;//[C]
x_b = 0.80;
x_t = 0.20;
// Here we calculate the vapour pressures of benzene and toluene at 20C using the Antoine equation
// log10(p) = A-B/(T+C)
// here pressure p is in torr and temperature T is in C
// From the reported table A.2 (page 418) in the book, the constant A,B,C in the above equation for benzene have the vaues as
A_b = 6.90565;
B_b = 1211.033;
C_b = 220.79;
// So, for benzene
p_b = 10^(A_b-B_b/(T+C_b));
// now from the reported table A.2 (page 418) in the book, the constant A,B,C in the above equation for toluene have the vaues as
A_t = 6.95334;
B_t = 1343.943;
C_t = 219.337;
// So, for toluene
p_t = 10^(A_t-B_t/(T+C_t));
// Now we can compute that for benzene
// y_b*P = x_b*p_b
// let y_b*P = p_1 , so
p_1 = x_b*p_b;
// and correspondingly for toluene
// y_t*P = x_t*p_t
// let y_t*P = p_2 , so
p_2 = x_t*p_t;
// Now adding these two values of benzene and toluene, we have 
// y_b*P+y_t*P = (y_b+y_t)*P
// i.e.
// P = (p_1+p_2)/(y_b+y_t)
// But we know that (y_b+y_t) must be equal to one i.e.
y = 1.00;// y =(y_b+y_t) sum of the mole fractions of the benzene and toluene in the gaseous phase
// Hence total pressure is
P = (p_1+p_2)/y;
// Now the mole fraction of either species in the gaseous phase will be ratio of the partial pressure of the species to the total pressure
// so
y_b = x_b*p_b/P;
y_t = x_t*p_t/P;
printf(" Vapour pressure of the mixture in the gaseous phase is %f torr\n",P);
printf(" Mole fraction of the benzene in the vapour phase is    %f\n",y_b);
printf(" Mole fraction of the toluene in the vapour phase is    %f",y_t);



