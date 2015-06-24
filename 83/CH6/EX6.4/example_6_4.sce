//Chapter 6
//Example 6.4
//page 209
//To find bus voltages using GS iterations
clear;clc;

//Ybus matrix from the network
Ybus=[3-9*%i -2+6*%i -1+3*%i 0;
      -2+6*%i 3.666-11*%i -0.666+2*%i -1+3*%i
      -1+3*%i -0.666+2*%i 3.666-11*%i -2+6*%i
      0 -1+3*%i -2+6*%i 3-9*%i]

//////////////////////////////////////////////////////
//Pi       Qi       Vi         Remarks        Bus no//
P1=0;     Q1=0;    V1=1.04;    //Slack bus    1
P2=0.5;   Q2=-0.2; V2=1;       //PQbus        2
P3=-1.0;  Q3=0.5;  V3=1;       //PQbus        3
P4=0.3;   Q4=-0.1; V4=1;       //PQbus        4
/////////////////////////////////////////////////////

n=1;
for i=1:n
    V2=(1/Ybus(2,2))*(((P2-%i*Q2)/conj(V2))-Ybus(2,1)*V1-Ybus(2,3)*V3-Ybus(2,4)*V4);
    V3=(1/Ybus(3,3))*(((P3-%i*Q3)/conj(V3))-Ybus(3,1)*V1-Ybus(3,2)*V2-Ybus(3,4)*V4);
    V4=(1/Ybus(4,4))*(((P4-%i*Q4)/conj(V4))-Ybus(4,1)*V1-Ybus(4,2)*V2-Ybus(4,3)*V3);
end

printf('\nAt the end of iteration %d the voltages at the buses are:\n\nV1=',n);disp(V1);printf('pu');
printf('\n\n\nV2=');disp(V2);printf('pu');
printf('\n\n\nV3=');disp(V3);printf('pu');
printf('\n\n\nV4=');disp(V4);printf('pu');
