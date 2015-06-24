clc;clear;
//Example 12.2

//given data
dT=302-300;
dv=0.87-0.86;
T=(302+300)/2;
v=(0.87+0.86)/2;//average values

//constants used
R=0.287;//in kJ/kg-K

//calculations
//using eq 12-3 by diffrentiating P= R*T/v
dP= R*dT/v - R*T*dv/v^2;
disp(dP,'the change in the pressure of air in kPa');
