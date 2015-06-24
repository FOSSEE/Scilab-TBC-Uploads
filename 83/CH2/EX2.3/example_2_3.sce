//Chapter 2
//Example 2.3
//page 58
//To find inductance of each side of the line and that of the complete line
clear;clc;
//to find mutual GMD
D14=sqrt(8*8+2*2);
D15=sqrt(8*8+6*6);
D24=sqrt(8*8+2*2);
D25=sqrt(8*8+2*2);
D34=sqrt(8*8+6*6);
D35=sqrt(8*8+2*2);
//sixth root of six mutual distances
Dm=(D14*D15*D24*D25*D34*D35)^(1/6);//mutual GMD between lines

//to find GMR of Side A conductors
D11=0.7788*2.5*10^(-3);
D22=D11;
D33=D11;
D12=4;
D21=D12;
D13=8;
D31=8;
D23=4;
D32=D23;
//ninth root nine distances in Side A
Da=(D11*D12*D13*D21*D22*D23*D31*D32*D33)^(1/9);

//to find GMR of Side A conductors
D44=0.7788*5*10^(-3);
D45=4;
D54=D45;
D55=D44;
//fourth root of four distances in Side B
Db=(D44*D45*D54*D55)^(1/4);

La=0.461*log10(Dm/Da);//inductance line A
Lb=0.461*log10(Dm/Db);//inductance line B

L=La+Lb; //loop inductance 

printf("\n\nMutual GMD between lines = %0.4f m\n\n",Dm);
printf("GMR of Side A conductors = %0.4f m\n\n",Da);
printf("GMR of Side B conductors = %0.4f m\n\n",Db);
printf("Inductance of line A = %0.4f mH/km\n\n",La);
printf("Inductance of line B = %0.4f mH/km\n\n",Lb);
printf("Loop Inductance of the lines = %0.4f mH/km\n\n",L);

