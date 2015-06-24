// Example 8.1: Analysis of op amp connected in an inverting configuration
// By inspection we can write down the expressions for A, B , closed loop gain , the input resistance and the output resistance
u=10^4; // (ohm)
R_id=100*10^3; // (ohm)
r_o=1000; // (ohm)
R_L=2000; // (ohm)
R_1=1000; // (ohm)
R_2=10^6; // (ohm)
R_S=10000; // (ohm)
A=u*(R_L*(R_1+R_2)/(R_L+R_1+R_2))*R_id/(((R_L*(R_1+R_2))/(R_L+R_1+R_2)+r_o)*(R_id+R_S+(R_1*R_2)/(R_1+R_2)))
disp(A,"Voltage gain without feedback (V/V)")
B=R_1/(R_1+R_2); // Beta value
disp(B, "Beta value ")
A_f=A/(1+A*B);
disp(A_f,"Voltage gain with feedback (V/V)")
R_i=R_S+R_id+(R_1*R_2/(R_1+R_2))// Input resistance of the A circuit in fig 8.12a of textbook
R_if=R_i*7;
R_in=R_if-R_S;
disp(R_in,"Input resistance (ohm)")
R_o=1/(1/r_o+1/R_L+1/(R_1+R_2));
R_of=R_o/(1+A*B); 
R_out=R_of*R_L/(R_L-R_of);
disp(R_out,"the output resistance (ohm)")