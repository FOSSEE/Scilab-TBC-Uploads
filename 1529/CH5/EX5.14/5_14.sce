//Chapter 5, Problem 14, Figure 5.27
clc;
//Resistance R1 R2 R3 R4 R5
R1=2;
R2=9;
R3=1.4;
R4=2;
R5=8;
V=17;
R45=(R4*R5)/(R4+R5);
R34=R3+R45;
R23=(R2*R34)/(R2+R34);
R=R1+R23;
//the circuit is gradually reduced in stages as shown in Fig. 5.28(a)–(d).
I=V/R;
I1=(R2/(R2+R34))*I;
Ix=(R1/(R1+R5))*I1;
printf("From Fig. 5.27,\n\n");
printf("Current Ix = %f A",Ix);
