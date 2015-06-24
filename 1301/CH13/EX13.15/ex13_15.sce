clc;
v=60;            //potential diff in volt
r=5;       //resistance in Ohm
r1=5;      //resistance in Ohm
r2=5;      //resistance in Ohm
r3=5;      //resistance in Ohm
rp=(r1)^-1+(r2)^-1+(r3)^-1;    //resistance in series
disp((rp^-1),"Resistance in Parallel in Ohm = ");     //displaying result
i=v/r;                //calculating current in Ampere using Ohm's law ie. V=I*R
disp(i,"Current in the entire circuit in Ampere = ");   //displaying result