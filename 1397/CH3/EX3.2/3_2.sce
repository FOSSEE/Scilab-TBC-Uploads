//clc();
clear;
//To determine reverberation time of hall
V=1500;              //Volume of hall in m^3
S=120;               //Seating capacity
S1=112;              //Area of plastered wall in m^2
C1=0.03;             //Coefficient of absorption of plastered wall in O.W.U
S2=130;              //Area of wooden floor in m^2
C2=0.06;             //Coefficient of absorption of wooden floor in O.W.U
S3=20;               //Area of wooden door in m^2
C3=0.06;             //Coefficient of absorption of wooden door in O.W.U
S4=170;              //Area of plastered ceiling in m^2
C4=0.04;             //Coefficient of absorption of plastered ceiling in O.W.U
S5=100;              //Area of cushioned chairs in m^2
C5=1.0;              //Coefficient of absorption of cushioned chairs in O.W.U
S6=120;              //Area of audience in m^2
C6=4.7;              //Coefficient of absorption of audience in O.W.U
A1=S1*C1;            //Absorption due to plastered wall
A2=S2*C2;            //Absorption due to wooden floor
A3=S3*C3;            //Absorption due to wooden door
A4=S4*C4;            //Absorption due to plastered ceiling
A5=S5*C5;            //Absorption due to cushioned chairs
A6=S6*C6;            //Absorption due to 120 persons
A=A1+A2+A3+A4+A5;
T1=(0.165*V)/A;
printf("Reverberation time when hall is empty is %f sec",T1);
T2=(0.165*V)/(A6+A);
printf("Reverberation time when hall is with full capacity of audience is %f sec",T2);
A7=100*C6;          //Absorption due to 100 persons
T3=(0.165*V)/(A7+A);
printf("Reverberation time when hall is with audience occupying only cushioned seats is %f sec",T3);
