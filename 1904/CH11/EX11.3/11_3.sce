//To Determine the Annual Fault properties for A B C Customers
//Page 608
clc;
clear;

//Annual average Fault rates
Fm=0.08;
Fl=0.2;


//Average Repair Times
Rm=3.5; //Main
Rl=1.5; //Lateral
Rs=0.75;//Manual Sections

// Distances of the Lateral Feeders of A,B, and C respectively
Lla=2;
Llb=1.5;
Llc=1.5;

// Distances of the Main Feeders of A,B, and C respectively
Lma=1;
Lmb=1;
Lmc=1;

TFm=(Lma*Fm)+(Lmc*Fm)+(Lmb*Fm); //Annual Fault of the Main Sections

deff('x=SusInt(y)','x=TFm+(Fl*y)') //Function to find the Total Annual Sustained Interruption rates

//Sustained Interruption Rates for A,B and C
IrA=SusInt(Lla);
IrB=SusInt(Llb);
IrC=SusInt(Llc);

//Annual Repair time for A,B and C
rA=((Lma*Fm*Rm)+(Lmb*Fm*Rs)+(Lmc*Fm*Rs)+(Lla*Fl*Rl))/IrA;
rB=((Lma*Fm*Rm)+(Lmb*Fm*Rm)+(Lmc*Fm*Rs)+(Llb*Fl*Rl))/IrB;
rC=((Lma*Fm*Rm)+(Lmb*Fm*Rm)+(Lmc*Fm*Rm)+(Llc*Fl*Rl))/IrC;

printf('\ni) The Annual Sustained Interruption Rates for:\n')
printf('Customer A : %g faults per year\n',IrA)
printf('Customer B : %g faults per year\n',IrB)
printf('Customer C : %g faults per year\n',IrC)
printf('\nii) The Average Annual Repair Time (Restoration Time) for:\n')
printf('Customer A : %g hours per fault per year\n',rA)
printf('Customer A : %g hours per fault per year\n',rB)
printf('Customer A : %g hours per fault per year\n',rC)
