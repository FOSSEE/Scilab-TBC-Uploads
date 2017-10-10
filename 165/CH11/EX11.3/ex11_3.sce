//Example 11.3
clc;

//Given values of bridge elements
R=700;    //R1=R2=R3=R
R4=735;   //R4=R+del_R
Rg=125;     //Galvanometer resistence
E=10;       //Applied potential across bridge
del_R=R4-R;
//Thevenin's equivalent voltage
Eth=0.25*E*del_R/R;
//Thevenin's equivalent resistence
Rth=R;
//Current through the Galvanometer
Ig=Eth/(Rth+Rg);
disp(Ig,'Current through the Galvanometer')