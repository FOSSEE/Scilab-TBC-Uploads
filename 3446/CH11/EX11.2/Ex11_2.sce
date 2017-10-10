// Exa 11.2
// To show that the transmitted signals to mobiles 1, 2, and 3 are recovered at the mobile receivers by despreading the resultant signal z(t).

clc;
clear all;

//solution
disp("From figure 11.4, we note that transmitted data for mobile1 as [0 1 1 0 0 ], for mobile2 as [0 0 1 0 0 ] and for mobile3 as [0 1 0 0 1] ");
disp("From figure 11.5 we get resultant demodulated signal at a mobile ");
Rx={[1 1 1 1 -3 1];[1 -3 1 1 1 1 ];[1 -3 1 1 1 -3];[1 -3 1 1 1 1];[-1 3 3 -1 3 -1]};//Resultant demodulated signal at mobile
disp(Rx);
//from Figure 11.4 
c1={[-1 -1 -1 -1 1 1];[1 -1 1 1 -1 -1];[1 -1 1 -1 -1 -1];[-1 1 1 1 -1 1];[1 -1 -1 1 -1 1]};
c2={[1 1 -1 1 1 -1];[-1 1 -1 1 -1 -1];[-1 -1 1 1 1 -1];[1 1 -1 -1 1 -1];[1 -1 -1 -1 -1 -1]};
c3={[-1 -1 1 -1 1 -1];[-1 -1 -1 1 1 1];[-1 1 1 -1 -1 1];[-1 1 -1 -1 -1 -1];[1 1 1 -1 1 1]};
//t={[1  2 3 4 5 6];[7 8 9 10 11 12];[13 14 15 16 17 18];[19 20 21 22 23 24];[25 26 27 28 29 30]};
//for Mobile 1
for i= 1:5
      
Demod1(i)=c1(i,1)*Rx(i,1)+c1(i,2)*Rx(i,2)+c1(i,3)*Rx(i,3)+c1(i,4)*Rx(i,4)+c1(i,5)*Rx(i,5)+c1(i,6)*Rx(i,6);
if(Demod1(i)<0)
    B1(i)=1;
else
    B1(i)=0;
    end
end
//for mobile 2
for i= 1:5
      
Demod2(i)=c2(i,1)*Rx(i,1)+c2(i,2)*Rx(i,2)+c2(i,3)*Rx(i,3)+c2(i,4)*Rx(i,4)+c2(i,5)*Rx(i,5)+c2(i,6)*Rx(i,6);
if(Demod2(i)<0)
    B2(i)=1;
else
    B2(i)=0;
    end
end
//for mobile 3
for i= 1:5
      
Demod3(i)=c3(i,1)*Rx(i,1)+c3(i,2)*Rx(i,2)+c3(i,3)*Rx(i,3)+c3(i,4)*Rx(i,4)+c3(i,5)*Rx(i,5)+c3(i,6)*Rx(i,6);
if(Demod3(i)<0)
    B3(i)=1;
else
    B3(i)=0;
    end
end
disp("Value of integration at end of bit period for mobile1");
disp(Demod1');
disp("Value of integration at end of bit period for mobile2");
disp(Demod2');
disp("Value of integration at end of bit period for mobile3");
disp(Demod3');
disp("The  recovered signal at mobile 1 is ");
disp(B1');
disp("The  recovered signal at mobile 2 is ");
disp(B2');
disp("The  recovered signal at mobile 3 is ");
disp(B3');
disp("In all cases, Recovered signal is negated value of transmitted signal")
