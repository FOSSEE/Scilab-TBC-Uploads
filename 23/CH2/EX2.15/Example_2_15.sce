clear;
clc;

//Example 2.15
//Caption : Program To find the Heat to be Removed during Compression 

//Given values

V=600;//[m/s]
W_compression=240;//[KJ/Kg]

//Solution
//Using Eqn(2.32a)
Q=(1/2*(V*V)/1000)-W_compression;

disp('KJ/kg',-Q,'Thus Heat Removed from each KG of air compressed is')

//End