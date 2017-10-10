//Example 11.2
clc;

//Given values of bridge elements
R1=1000;
R2=2500;
R3=3500;
R4=10000;
Rg=300;     //Galvanometer resistence
E=6;        //Applied potential across bridge
//Thevenin's equivalent voltage
Eth=E*(R4/(R2+R4)-R3/(R1+R3));
//Thevenin's equivalent resistence
Rth=R1*R3/(R1+R3)+R2*R4/(R2+R4);
//Current through Galvanometer
Ig=Eth/(Rth+Rg);
disp(Ig,'Current through galvanometer is')