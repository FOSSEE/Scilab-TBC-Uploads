//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 12

clc;
disp("CHAPTER 7");
disp("EXAMPLE 12");

//no load cuurent of transformer ia 10A at pf of 0.25 lagging when connected to 400V, 50 Hz supply
//VARIABLE INITIALIZATION 
v1=400;                         //primary voltage in Volts
f=50;                           //Hz
Io=10;                          //in Amp no load current
pf =0.25;                       //lagging
N1=500;                         //given

//SOLUTION
//magnetizing component of no load current
// N1/N2=V1/V2
//Iphi=Io.sin phi0
//pf=cos phi0
phi0=acos(pf);
Iphi=Io*sin(phi0);
disp("SOLUTION (a)");
disp(sprintf("The magnetic component of no load current is %f Amp",Iphi));
//
//iron loss
//Pi=ironloss=power input on no load
//Pi=Wo=V1.Io.cos phi0
ironLoss=v1*Io*pf;
disp("SOLUTION (b)");
disp(sprintf("The iron loss on no load is %.0f W",ironLoss));
//
//maximum flux in the core
//E1=sqrt(2).pi.f.N1.φm
//E1=V1
phiM=v1/(4.44*f*N1);
disp("SOLUTION (c)");
disp(sprintf("The value of flux in the core is %5.4f mWb",phiM*1000));
disp(" "); 
// 
//END
