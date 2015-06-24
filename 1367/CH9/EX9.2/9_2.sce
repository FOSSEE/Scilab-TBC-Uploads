//Find Average and Boundary area
//Exa:9.2
clc;
clear;
close ;
n=2^(5-1);//astm no. = 5 in grain/inch^2
//Lineal and Areal magnifications are related as *100 Lineal = *10000 Areal
x=n/(.01*.01);//in grain/inch^2 at 1 x.
a=1/x;//average area in inch^2
a1=2.54*2.54*a;//average area in cm.^2
disp(a1,"Average area of one grain (in sq cm) = ");
l=sqrt(x);//grains/inch of length
s=(1/l)^2;//surface area in sq inch
s6=6*s;//surface area of 6 surfaces of cubic grain in sq inch
b=0.5*s6*(l^3);//total boundary area in sq inch
b1=b/(2.54);//total boundary area in sq cm
disp(b1,"Boundary Area per cubic centimetre of steel (in sq cm) = ");