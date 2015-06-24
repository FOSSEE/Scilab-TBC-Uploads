//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.5-2
//Introduction to engineering principles and units
//given data
//Basis: feed stream is 1000 kg/h
//component balance for Pottasium Nitrate: 1000(20/100)=W(0)+P(96/100)
P=1000*(0.2)*(100/96);//P is the outlet rate of KNO3 crystals

//overall balance for a crystallizer: S-R=P
//KNO3 balance on crystallizer: S(50/100)-R(37.5/100)=P(96/100)
//solving 2 equations using matrix operations
A=[1 -1;0.5 -0.375];
B=[P;0.96*P];
x=inv(A)*B;
S=x(1,1);
R=x(2,1);
mprintf(" the recycle R %f kg/h",R)
mprintf("the rate of crystals getting out of crystallizer %f kg/h",S)
