clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 11.7
//Caption : Program to Find the Fugacity Coefficient for the mixture

T=200;//[K]
P=30;//[bar]
R=83.14;
x1=0.4;//[N2]
x2=1-x1;//[CH4]

B11=-35.2;//[cm^3/mol]
B22=-105;//[cm^3/mol]
B12=-59.8;//[cm^3/mol]

delta_12=approx((2*B12)-B11-B22,1);
si_1=approx(exp((P/(R*T))*(B11+(x2^2*delta_12))),4);
si_2=approx(exp((P/(R*T))*(B22+(x1^2*delta_12))),4);

B=approx((x1^2*B11)+(2*x1*x2*B12)+(x2^2*B22),2);
Z=approx(1+((B*P)/(R*T)),2);

disp(si_1,si_2,'Fugacity Coefficients are ')
disp(B,'Second Viral coefficient is ')
disp(Z,'Compressibility Factor is ')

//End