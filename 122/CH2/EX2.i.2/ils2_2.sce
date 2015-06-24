// Illustration 2.2
// Conversion from transfer function model to state space model
// Section 2-6 of the Book

//     This example demonstrates that there is no unique 
//  state space reperesentation of a transfer function. 

clear; clc; close; mode(0); 
s = %s;
num = s;
den = 160 + 56*s + 14*s^2 + s^3;
Htf = syslin('c',num,den)

// There are infinite state space models for the same transfer 
// function. The tf2ss() function will return one of them,

Hss = tf2ss(Htf);
ssprint(Hss);       //Print the state space model

//Alternatively: you can directly get the A,B,C,D
[A,B,C,D] = abcd(Htf)

//To cross check, let us find the transfer function 
Htf2 = clean(ss2tf(Hss))   //which matches with Htf 



Hssc = cont_frm(Htf.num,Htf.den)
Htfc = clean(ss2tf(Hssc))

// The same transfer function again 