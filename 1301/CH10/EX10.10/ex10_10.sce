clc;
t1=293;     //temp in Kelvin
t2=233;     //temp in Kelvin
v1=0.1;     //volume in m cube
p1=10;      //pressure in atm
p2=1;       //pressure in atm
v2=(p1*v1*t2)/(t1*p2);   //calculating v2 using ideal gas law
p3=1;       //pressure in atm
v3=(p1*v1)/p3;      //calculating volume using ideal gas law
disp(v2-0.1,"(a)Volume of ballon in m cube = ");  //displaying result.
disp(v3-0.1,"(b)Volume of ballon after Helium absorbs heat from air  in m cube = ");  //displaying result.