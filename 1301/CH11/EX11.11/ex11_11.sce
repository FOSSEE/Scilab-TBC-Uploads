clc;
t1=34+273;      //temperature in Kelvin
t2=35+273;      //temperature in Kelvin
r=((t2^4)-(t1^4))/(t1^4);    //calculating percentage difference in radiation
disp(r*100,"Percentage difference in radiation = ");     //displaying result