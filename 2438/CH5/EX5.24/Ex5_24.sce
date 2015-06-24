//============================================================================
// chapter 5 example 23

clc;
clear;

//input data 
 p2        =  2.75;         //resistivity of alloy 1 percent of Ni in uohm-cm
 p1            =  1.42;     //resistivity of pure copper in uohm-cm
 p3           = 1.98;       //resistivity of alloy 3 percent of silver in uohm-cm
 
 //p(Ni+Cu) =p1
 //pCu =p2
 //p(Cu+silver)=p3
 //calculation
 pNi        = p2-p1;
 p4    = (p3-p1)/3;
 palloy     = p1+(2*pNi)+(2*p4);        //resistivity of alloy 2 percent of silver and 2 percent of nickel in uohm-cm
 
 //result
 mprintf('resistivity of alloy =%3.4f.uohm-cm\n',palloy);
