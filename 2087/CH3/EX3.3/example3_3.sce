

//example 3.3
//calculate
//depth upto which soil profile is wetted
clc;
//Given
gammad=15.3;      //dry weigth of soil
gammaw=9.81;      //unit weigth of water
Fc=0.15;          //field capacity
Mc=0.08;          //moisture content before irrigation
D=60;             //Depth of water applied
d=(gammaw*D)/(gammad*(Fc-Mc));
d=round(d);
mprintf("Depth upto which soil profile is wetted=%f mm.",d);
