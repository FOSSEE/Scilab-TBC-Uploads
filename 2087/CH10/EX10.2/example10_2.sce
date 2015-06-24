

//example 10.2
//calculate discharge per meter length of dam
clc;funcprot(0);
//given
K=3D-3;            //coefficient of permeability
nd=25;              //number of potential drops
nf=4;              //number of flow channels
lf=40;             //filter length
H=52;              //heigth of dam
fb=2;              //free board

q=K*(H-fb)*nf/(nd*100);
mprintf("Discharge per meter length of dam=%f cumec/metre length.",q);

