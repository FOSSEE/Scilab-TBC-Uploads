//EXAMPLE 27.9
//DYNAMO

clc;
funcprot(0);

//Variable Initialisation
N=800;........//Speed in rpm
cs=123;.......//Number of segments in a commutator
Wb=3;.........//Brush span in segments
v=N*cs/60;.............//Velocity in segments/second
ct=Wb*60*1000/(N*cs);........//Commutation time in Milliseconds
y=round(ct*100)/100;......//Rounding of decimal places
disp(y,"Commutation time in Milliseconds:");
