clc;
v=60;            //potential diff in volt
r1=5;      //resistance in Ohm
r2=5;      //resistance in Ohm
r3=5;      //resistance in Ohm
r=r1+r2+r3;    //resistance in series
disp(r,"Resistance in Series in Ohm = ");     //displaying result
i=v/r;                //calculating current in Ampere using Ohm's law ie. V=I*R
disp(i,"Current in the entire circuit in Ampere = ");   //displaying result