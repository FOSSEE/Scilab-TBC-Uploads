// Determine current through branch AB using loop and nodal analysis

clc;
clear;

Is=4; // Current Source
//Resistances
Rab=2;
R1=4;// After point B towards the right
R2=1;

V=10; // Voltage source

//Using Simple Logic
i1=Is; // Current source connected in series with resistor
i2=10/(R1+R2);

printf('The Current through branch AB: \n')
printf('i) Simple Logic = %g A\n',i1)

//Using Loop Analysis

//Conversion of Current source into voltage source, R tends to infinity

R=poly(0,'R');

Rmat=[R+2 0; 0  5];
Vmat=[(4*R)-V;V];
Imat=inv(Rmat)*Vmat;
printf('\nii) Loop Analysis\n')
disp(Imat(1,1),'The current through AB is')
printf('\nWhere R tends to infinity\n')

R=%inf;
i1=(4-(V/R))/(1+(Rab/R));
printf('\n  = %g A\n',i1)

// Using Nodal Analysis
// Conversion of voltage source into current source, R then tends to zero

R=poly(0,'R');

// Nodal Eqaution
//0.5V1-0.5V2+0V3 = 4
//-0.5V1+(0.75+(1/R))V2-0.25V3 = 10/R
//0V1-0.25V2+1.25V3=0

Y=[0.5 -0.5 0;-0.5 (0.75+(1/R)) -0.25;0 -0.25 1.25]; // Admittance Matrix
Im=[4; (10/R); 0] ; // Current Matrix
Vm=inv(Y)*Im; // Voltage Matrix
V1=Vm(1,1);
V2=Vm(2,1);
V3=Vm(3,1);

DiffV=V1-V2; 

printf('\niii) Nodal Analysis:\n')
disp(V2,'V2:',V1,'V1:')
Vdiff=roots(DiffV(2)-R); // To change data type
disp(DiffV,'V1-V2 :')
In=Vdiff/Rab; // Current due to nodal analysis

printf('\n The Current Through 2 ohm resistor = %g A\n',In )
