// Exa 11.6
// To show how the signal is recovered at mobile by using two-rake receivers.

clc;
clear all;

//solution
disp("As we are given that actual bit values for mobile are [1 0 0 1 1] ");
M1=[1 0 0 1 1];

Rx1={[1 1 1 1 -3 1];[1 -3 1 1 1 1 ];[1 -3 1 1 1 -3];[1 -3 1 1 1 1];[-1 3 3 -1 3 -1];[1 -1 -1 0 0 0]};//Resultant demodulated signal at mobile(Z(t)) from path1

Rx2={[-1 -1 1 1 1 1 ];[-3 1 1 -3 1 1 ];[1 1 1 -3 1 1 ];[1 -3 1 -3 1 1 ];[1 1 -1 3 3 -1 ];[3 1 -1 0 0 0]};//Resultant demodulated signal at mobile(Z(t-2Tc)) from path2

Rx=Rx1+Rx2; //since,Z(t)=z(t)+Z(t-2Tc)

//from Figure 11.13 (d) & Figure 11.14
c1={[-1 -1 -1 -1 1 1];[1 -1 1 1 -1 -1];[1 -1 1 -1 -1 -1];[-1 1 1 1 -1 1];[1 -1 -1 1 -1 1]};
c2={[-1 1 -1 -1 -1 -1 ];[1 1 1 -1 1 1 ];[-1 -1 1 -1 1 -1 ];[-1 -1 -1 1 1 1 ];[-1 1 1 -1 -1 1 ];[-1 1 0 0 0 0]};

//case-1:Z(t)*C1(t);
for i= 1:5
      
Demod_1(i)=c1(i,1)*Rx(i,1)+c1(i,2)*Rx(i,2)+c1(i,3)*Rx(i,3)+c1(i,4)*Rx(i,4)+c1(i,5)*Rx(i,5)+c1(i,6)*Rx(i,6);
if(Demod_1(i)<0)
    B1(i)=1;
else
    B1(i)=0;
    end
end

//case-2:Z(t)*C1(t-2Tc);
for j=1:5

Demod_2(j)=c2(j,3)*Rx(j,3)+c2(j,4)*Rx(j,4)+c2(j,5)*Rx(j,5)+c2(j,6)*Rx(j,6)+c2(j+1,1)*Rx(j+1,1)+c2(j+1,2)*Rx(j+1,2);
if(Demod_2(j)<0)
    B2(j)=1;
else
    B2(j)=0;
    end
 end
   disp("case-1:z(t)*c1(t)");
disp("Value of integration at end of bit period for mobile(case-1)");
disp(Demod_1');
disp("The recovered signal at mobile(case-1) is ");
disp(B1');
disp("Actual bit values are");
disp(M1);
disp("Recovered and actual values are not matching");
disp("case-2:z(t)*c1(t-2Tc)");
disp("Value of integration at end of bit period for mobile(case-2)");
disp(Demod_2');
disp("The recovered signal at mobile(case-2) is ");
disp(B2');
disp("Actual bit values are");
disp(M1);
disp("Recovered and actual values are not matching");
//case3-Sum of path1 and path2
disp("case-3:Sum of path1 & path2 integrator");
disp("Sum of integrator outputs(rake receiver output)");
Demod_3=Demod_1+Demod_2;
disp(Demod_3');
for k=1:5

if(Demod_3(k)<0)
    B3(k)=1;
else
    B3(k)=0;
end
end
disp("Detected bit value ");
disp(B3');
disp("Actual bit values are");
disp(M1);
disp("Recovered and actual values are matching");
