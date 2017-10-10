
//Example 1.1
//page-4

clear; clc; close;
format('v',7);
//To calculate maximum flux density and number of turns on high voltage side

//given data
E1=3300;//in volt  
E2=250; //in volt
A=0.0125;//in metre square
f=50;//in hertz
N2=70;//no. of turns on low voltage side
//calculations
//(a)maximum flux density
Bm=E2/(4.44*A*f*N2);// in teslas
//(b)number of turns on high voltage side
T1=(E1*N2)/E2;//no of turns on high voltage side
disp(Bm,"(a)maximum flux density in teslas");//+0.002 error
disp(T1,"(b)number of turns on high voltage side")
