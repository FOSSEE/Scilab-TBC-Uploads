clc;
T1=283;        //temperature Kelvin
T2=322;       //temp. in Kelvin
p1=35;        //pressure in lb/in square
p2=(T2*p1)/T1;    //calculating p2 using ideal gas equation since,v1=v2
disp(p2,"Pressure in lb/in square = ");     //displaying result.