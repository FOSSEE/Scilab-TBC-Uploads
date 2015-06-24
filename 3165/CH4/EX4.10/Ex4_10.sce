//Example 4 . 1 0
//To Find out B i l i n e a r Tr ans f o rma t i on o f H( s )=( s^2+4.525) /( s ^2+0.692 s +0.504)
clc ;
s=%s;
z=%z;
HS =(s ^2+4.525) /(s ^2+0.692* s +0.504) ;
T =1;
HZ= horner (HS ,(2/ T)*(z -1) /(z +1) );
disp (HZ , 'H( z ) =' );
