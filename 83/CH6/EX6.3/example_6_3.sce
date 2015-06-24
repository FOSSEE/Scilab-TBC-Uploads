//Chapter 6
//Example 6.3
//page 201
//To find an approximate load flow solution
clear;clc;

/////////////////////////////////////////////////////////////////////////////////
//Realdemand    Reactive demand    Real generation    Reactive generation     Bus
/////////////////////////////////////////////////////////////////////////////////
  Pd1=1;           Qd1=0.5;            Pg1=0;          Qg1=0;//initialization  1
  Pd2=1;           Qd2=0.4;            Pg2=4;          Qg2=0;//initialization  2
  Pd3=2;           Qd3=1;              Pg3=0;          Qg3=0;//initialization  3
  Pd4=2;           Qd4=1;              Pg4=0;          Qg4=0;//initialization  4

Pg1=Pd1+Pd2+Pd3+Pd4-Pg2;

//Ybus matrix from the network
Ybus=[-21.667*%i 5*%i 6.667*%i 10*%i;
      5*%i -21.667*%i 10*%i 6.667*%i;
      6.667*%i 10*%i -16.667*%i 0;
      10*%i 6.667*%i 0 -16.667*%i];
printf('Ybus matrix of the system is given by \nYbus=');disp(Ybus);
//as given in the text book using approximate load flow equations and simplifying (ii),(iii),(iv)
//delta matrix(x) is of the from A*x=B
A=[-5 21.667 -10 -6.667;
   -6.667 -10 16.667 0;
   -10 -6.667 0 16.667
   1 0 0 0];
   
B=[3; -2; -2;0];

delta=inv(A)*B; //solving for delta
printf('\nDelta of the system is given by \ndelta(rad)=');disp(delta);

Q1=-5*cos(delta(2,1))-6.667*cos(delta(3,1))-10*cos(delta(4,1))+21.667;
Q2=-5*cos(delta(2,1))-10*cos(delta(3,1)-delta(2,1))-6.667*cos(delta(4,1)-delta(2,1))+21.667;
Q3=-6.667*cos(delta(3,1))-10*cos(delta(3,1)-delta(2,1))+16.667;
Q4=-10*cos(delta(4,1))-6.667*cos(delta(4,1)-delta(2,1))+16.667;

Q=[Q1;Q2;Q3;Q4];
printf('\nInjected reactive power at the buses is given by \nQi(in pu)=');disp(Q);

Qg1=Q1+Qd1;
Qg2=Q2+Qd2;
Qg3=Q3+Qd3;
Qg4=Q4+Qd4;

Qg=[Qg1;Qg2;Qg3;Qg4];
printf('\n Reactive power generation at the four buses are \nQgi(in pu)=');disp(Qg);
Qd=[Qd1;Qd2;Qd3;Qd4];
Ql=sum(Qg)-sum(Qd);
printf('\nReactive power losses are QL=%0.5f pu',Ql);

printf('\n\nLine Flows are given as:\n');
P13=(abs(Ybus(1,3)))*sin(delta(1,1)-delta(3,1));P31=-P13;printf('\nP13=-P31=%0.3f pu',P13);
P12=(abs(Ybus(1,2)))*sin(delta(1,1)-delta(2,1));P21=-P12;printf('\nP12=-P21=%0.3f pu',P12);
P14=(abs(Ybus(1,4)))*sin(delta(1,1)-delta(4,1));P41=-P14;printf('\nP14=-P41=%0.3f pu',P14);

Q13=abs(Ybus(1,3))-(abs(Ybus(1,3)))*cos(delta(1,1)-delta(3,1));Q31=-Q13;printf('\n\nQ13=-Q31=%0.3f pu',Q13);
Q12=abs(Ybus(1,2))-(abs(Ybus(1,2)))*cos(delta(1,1)-delta(2,1));Q21=-Q12;printf('\nQ12=-Q21=%0.3f pu',Q12);
Q14=abs(Ybus(1,4))-(abs(Ybus(1,4)))*cos(delta(1,1)-delta(4,1));Q41=-Q14;printf('\nQ14=-Q41=%0.3f pu',Q14);


   