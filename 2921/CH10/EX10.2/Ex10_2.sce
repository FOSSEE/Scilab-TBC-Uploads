clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-10.2 Page No.198\n');

Pa=100;              //[lb/in^2] Air pressure
Da=4;                //[in] Diameter
Aa=%pi*Da^2/4;       //[in^2] Cross section area

F1=Pa*Aa;            //[lb] 
Do=1;                //[in] 
Ao=%pi*Do^2/4;       //[in] 
Po=F1/Ao;            //[lb/in^2]

mprintf('\n The oil pressure is %f lb/in^2.',Po);

D2o=3;               //[in]
A2o=%pi*D2o^2/4;     //[in^2]
F2=Po*A2o;

mprintf('\n Force F on piston rod is %f lb.',F2);

D=1;                 //[in]
d=4;                 //[in] 
A=%pi*D^2/4;         //[in^2]

V=A*d;               //[in^3]

mprintf('\n The volume in 1-inch cylinder for the 4-inch travel is %f in^3.',V);

A3=%pi*3^2/4;        //[in^2]
l3=V/A3;             //[in]

mprintf('\n Travel for 3-inch cylinder is %f in.',l3);


