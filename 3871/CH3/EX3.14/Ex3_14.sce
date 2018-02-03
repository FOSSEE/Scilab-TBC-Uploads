//===========================================================================
//chapter 3 example 14

clc;clear all;

//variable declaration
R1     = 200;                   //resistancce in Ω
R2     = 100;                   //resistancce in Ω
R3     = 50;                    //resistancce in Ω
dR1     = 5;                   //change in resistancce(dR1/R1) in %
dR2     = 5;                   //change in resistancce(dR2/R2) in %
dR3     = 5;                    //change in resistancce(dR3/R3) in %
y1      = 20000;  
y2      = 5000;
y3      = 10000;


//calculations
Rse    = R1+R2+R3;              //equivalent resistance in Ω
R      = ((R1/(Rse))*(dR1))+((R2/(Rse))*(dR2))+((R3/(Rse))*(dR3));
e      =  Rse*(R/(100));                   //relative limiting error  of series equivalent in Ω
X      = R1*R2*R3;                 
Y      = (R2*R3)+(R1*R3)+(R1*R2);
RP     = X/(Y);                          //equivalent resistance in  Ω
eX     = dR1+dR2+dR3;                            //error in X in %
dy1     = dR1+dR2;                               //error(dy1/y1) n y1 in %
dy2     = dR2+dR3;                               //error(dy2/y2) in y2 in %
dy3     = dR3+dR1;                               //error(dy3/y3) in y3 in %
eY      = ((y1/(Y))*(dy1))+((y2/(Y))*(dy2))+((y3/(Y))*(dy3));        //percentage error in %
pemax      = eX+eY;                               //percentage error (maximum possible) in equivalent parallel resistance in %
emax      = RP*(pemax/(100));              //error maximum possible in equivalent parallel resistance in Ω

//result
mprintf("equivalent resistance = %3.2f Ω",Rse);
mprintf("\nrelative limiting error of series resistance  = %3.2f percentage",R);
mprintf("\nrelative limiting error  of series equivalent = %3.2f Ω",e);
mprintf("\npercentage error (maximum possible) in equivalent parallel resistance= %3.2f percetage",pemax);
mprintf("\nerror maximum possible in equivalent parallel resistance =%3.4f Ω',emax);

