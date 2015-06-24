

//example 3.14
//calculate Discharge for water course
clc;
//Given
CA=1200;        //culturable area
IA=0.4;          //intensity of irrigation of crop A
IB=0.35;         //intensity of irrigation of crop B
bA=20;           //kor period of crop A
bB=15;           //kor period of crop B
deltaA=0.1;          //kor depth of crop A
deltaB=0.16;          //kor depth of crop B

//crop A
A=CA*IA;
Du=8.64*bA/deltaA;
qA=A/Du;
qA=round(qA*1000)/1000;
mprintf("Discharge required for crop A=%f cumec.",qA);

//crop B
A=CA*IB;
Du=8.64*bB/deltaB;
qB=A/Du;
qB=round(qB*1000)/1000;
mprintf("\nDischarge required for crop B=%f cumec.",qB);
D=qA+qB;
D=round(D*10)/10;
mprintf("\nDesign discharge of water course=%f cumec.",D);
