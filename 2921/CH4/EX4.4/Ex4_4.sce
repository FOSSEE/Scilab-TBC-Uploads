clc;
clear;
mprintf('MACHINE DESIGN\n Timothy H. Wentzell, P.E.\n Example 4.4  Page no 71')

P=20;             //[hp] Power transmitted by chain drive
n=500;            //[rpm] speed
d=8;              //[in] Pitch diameter of sprocket
fos=2;
D=1.25;           //[in] Diameter of shaft
L=12;             //[in] Distance between two supporting bearings
Z1=%pi*D^3/16;    //[in^3] Section modulus for torsion
Z2=%pi*D^3/32;    //[in^3] Section modulus for bending

T=63000*P/n;      //[in*lb] Torque on shaft

F=T/(d/2);        //[lb] Force in chain

M=F*L/4;          //[in*lb] Bending moment in shaft

Ss=T/Z1;          //[lb/in^2] Torsional shear stress

Sb=M/Z2;          //[lb/in^2] Bending normal stress

//Note- In the book Sb=9860 lb/in^2 is used instead of Sb=9856.7075 lb/in^2

S=(Sb/2)+sqrt(Ss^2+(Sb/2)^2);  //[lb/in^2] Combined max. stress

Sy=30000;         //[lb/in^2]From APPENDIX 4 Page no-470 for AISI 1020 and Hot-rolled steel
FOS=(Sy/2)/S;     //[]Actual factor of safty

if S < Sy/2 then  //Strength is greater than combined stress so design is safe
    mprintf('\n\n Design is acceptable and Combined stress is %f lb/in^2',S);
else 
    mprintf('\n\n Design is not acceptable');
end
