clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 10.2
//Caption : Program to Find the Composition of the vapor and Liquid phases

//Taking CO2 as Species 1 and Water as Species 2
H=990;//[Bar] Henry's Law const
T=283.15;//[K]
P2_sat=0.01227;//[Bar]  from Steam Tables
x1=0.01;//Assumed
x2=1-x1;
y1=1;
P=approx((x1*H)+(x2*P2_sat),3);
x1=approx((y1*P)/H,4);
x2=1-x1;
y2=approx((x2*P2_sat)/P,4);
y1=1-y2;
disp(x1,'Composition in liquid Phase')
disp(y1,'Composition in vapor Phase')
disp('Bar',P,'Pressure Exerted on Can')
disp('Hence Vapor phase chosen is nearly pure')

//End