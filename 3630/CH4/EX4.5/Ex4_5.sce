clc;
Rd=10; //Ohm
C1=0.000001; //Farad
RL=10000; //Ohm
Tc=5*(Rd*C1);
Td=5*(RL*C1);
disp('seconds',Tc,"Tc=");//The answers vary due to round off error
disp('seconds',Td,"Td=");//The answers vary due to round off error
