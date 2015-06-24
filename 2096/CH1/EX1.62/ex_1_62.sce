// Example 1.62. limiting error and standard deviation
clc, clear
// given :
q1=50;
q2=100;
dq1=0.02; // may be +ve or -ve
dq2=0.01; // may be +ve or-ve
Le=(((q1/(q1+q2))*dq1)+((q2/(q1+q2))*dq2))*100;
Re=sqrt(1+1); // when individul error are standard deviation,then errors in individual measurement are 2% of 50 and 1% of 100 ie., 1 and 1
Sd=(Re/(q1+q2))*100;
disp(Le,"limiting error,Le(%) = ")
disp(Sd,"standard deviation,Sd(%) = ")
