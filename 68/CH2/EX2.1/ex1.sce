// Example 2.1 : Closed loop and open loop gain
// Consider inverting configuration

// 2.1a
R_1=1000; // (ohm)
R_2=100*10^3; // (ohm)
A=10^3; // (V/V)
disp(A,"A (V/V)")
G=-R_2/R_1/(1+(1+R_2/R_1)/A);
disp(-G,"G")
e=(-G-(R_2/R_1))/(R_2/R_1)*100;
disp(e,"e (%)")
v_1=0.1; // (V)
v_1=G*v_1/A;
disp(v_1,"v_1 (V)")
A=10^4; // (V/V)
disp(A,"A (V/V)")
G=-R_2/R_1/(1+(1+R_2/R_1)/A);
disp(-G,"G")
e=(-G-(R_2/R_1))/(R_2/R_1)*100;
disp(e,"e (%)")
v_1=0.1; // (V)
v_1=G*v_1/A;
disp(v_1,"v_1 (V)")
A=10^5; // (V/V)
disp(A,"A (V/V)")
G=-R_2/R_1/(1+(1+R_2/R_1)/A);
disp(-G,"G")
e=(-G-(R_2/R_1))/(R_2/R_1)*100;
disp(e,"e (%)")
v_1=0.1; // (V)
v_1=G*v_1/A;
disp(v_1,"v_1 (V)")

// 2.1b
A=50000; // (V/V)
disp(A,"A (V/V)")
G=-R_2/R_1/(1+(1+R_2/R_1)/A);
disp(-G,"G")
disp("Thus a -50% change in the open loop gain results in only -0.1% in the closed loop gain")