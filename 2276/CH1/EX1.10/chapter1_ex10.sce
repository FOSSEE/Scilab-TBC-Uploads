clc
clear

//input
//AN,BN,CN are connected in star fashion where N is the nuetral point
r1=5;//resistance in arm AN in ohms
r2=20;//resistance in arm BN in ohms
r3=10;//resistance in arm CN in ohms

//calculations
//star to delta conversion
Y1=1/r1;//conductance of arm AN in seimens
Y2=1/r2;//conductance of arm BN in seimens
Y3=1/r3;//conductance of arm CN in seimens
R1=1/((Y1*Y2)/(Y1+Y2+Y3));//resistance of arm AB in ohms
R2=1/((Y2*Y3)/(Y1+Y2+Y3));//resistance of arm BC in ohms
R3=1/((Y1*Y3)/(Y1+Y2+Y3));//resistance of arm CA in ohms

//ouput
mprintf('the equivalent resistances values for delta circuit are %3.0f ohms, %3.0f ohms and %3.1f ohms',R1,R2,R3)
