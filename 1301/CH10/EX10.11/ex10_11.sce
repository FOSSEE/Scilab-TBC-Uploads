clc;
d1=1.293;      //density in kg/m cube
t1=273;        //temperature in Kelvin
p2=2;          //pressure in atm
t2=373;        //temperature in Kelvin
p1=1;          //pressure in atm
d2=(d1*t1*p2)/(t2*p1);    //calculating density using ideal gas law in kg/m cube
disp(d2,"Density in kg/m cube = ");    //displaying result