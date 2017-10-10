//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 12

disp("CHAPTER 7");
disp("EXAMPLE 12");

//VARIABLE INITIALIZATION 
v1=400;                         //primary voltage in Volts
f=50;                           //Hz
Io=10;                          //in Amp no load current
pf =0.25;                       //lagging
N1=500;                         //given

//SOLUTION
// N1/N2=V1/V2
phi0=acos(pf);
Iphi=Io*sin(phi0);
disp("SOLUTION (a)");
disp(sprintf("The magnetic component of no load current is %f Amp",Iphi));
//
ironLoss=v1*Io*pf;
disp("SOLUTION (b)");
disp(sprintf("The iron loss on no load is %f W",ironLoss));
//
//E1=4.44.f.N1.φm
phiM=v1/(4.44*f*N1);
disp("SOLUTION (c)");
disp(sprintf("The value of flux in the core is %f Wb",phiM));
disp(" "); 
// 
//END
