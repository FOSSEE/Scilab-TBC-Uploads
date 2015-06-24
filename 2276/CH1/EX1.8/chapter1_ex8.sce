clc
clear

//input
//arma AB,BC and CA forms delta connection
r1=2;//resistance in arm AB in ohms
r2=3;//resistance in arm BC in ohms
r3=5;//resistance in arm CA in ohms

//calculations
//conversion of given delta into star connection
//let N be the star point
R1=(r1*r2)/(r1+r2+r3);//resistance in arm AN in ohms
R2=(r2*r3)/(r1+r2+r3);//resistance in arm BN in ohms
R3=(r1*r3)/(r1+r2+r3);//resistance in arm CN in ohms

//output
mprintf('the respective star connected resistances are %3.1f ohm,%3.1f ohm and %3.1f ohm',R1,R2,R3 )
