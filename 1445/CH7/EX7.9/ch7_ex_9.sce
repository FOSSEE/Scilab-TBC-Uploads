//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 9

disp("CHAPTER 7");
disp("EXAMPLE 9");

//VARIABLE INITIALIZATION 
v1=11000;                       //primary voltage in Volts
v2=400;                         //secondary voltage in Volts
Io=1;                           //primary current
pf=0.24                         //power factor lagging

//SOLUTION
Ic=Io*pf;
disp("SOLUTION (a)");
disp(sprintf("The value of core loss current is %f Amp",Ic));
//
Iphi=sqrt(Io^2-Ic^2);
disp("SOLUTION (b)");
disp(sprintf("The value of core loss current is %f Amp",Iphi));
//
IronLoss=v1*pf;
disp("SOLUTION (c)");
disp(sprintf("The iron loss  is %f W",IronLoss));
disp(" "); 
// 
//END

