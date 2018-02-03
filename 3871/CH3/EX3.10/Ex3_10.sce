//===========================================================================
//chapter 3 example 10

clc;clear all;

//variable declaration
R      = 100;        //resistance in Ω
dR     = 0.2;        //resistancce error in Ω(ranging + to -)
I      = 2;          //current in A
dI     = 0.01;       //error in current in A(ranging + to -)

//calaculatons
eR     = (dR/(R))*100;    //percentage limiting error to resistance in %(ranging + to -)
eI     = (dI/(I))*100;    //percentage limiting error to current in %(ranging + to -)
P      = (I^2)*R;             //power dissioation in W
eP     = (2*eI)+eR;            //worst ossible combination of errors the limiting error in the power dissipation in %
p      = (eP*10^-2)*P;                 //error in power in watts
P1     = P+p;                   //power dissipation in W
P2     =P-p;                   //power dissipation in W

//result
mprintf("limiting error = %3.2f percentage',eP);
mprintf("\npower dissipation %3.2f W %3.2f W",P2,P1);

