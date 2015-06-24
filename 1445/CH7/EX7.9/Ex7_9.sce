//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 9

disp("CHAPTER 7");
disp("EXAMPLE 9");

//11000/400 V distribution transformer
//VARIABLE INITIALIZATION 
v1=11000;                       //primary voltage in Volts
v2=400;                         //secondary voltage in Volts
Io=1;                           //primary current in Amp
pf=0.24                         //power factor lagging

//SOLUTION
//core loss current
//Ic=Io.cos phi
//Ic=Io.pf
Ic=Io*pf;
disp("SOLUTION (a)");
disp(sprintf("The value of core loss current is %.2f Amp",Ic));
//
//magnetizing current
//Iphi=sqrt(Io^2-Ic^2)
Iphi=sqrt(Io^2-Ic^2);
disp("SOLUTION (b)");
disp(sprintf("The value ofmagnetizing current is %.3f Amp",Iphi));
//
//Iron Loss
//Iron loss=primary voltage X core loss current
IronLoss=v1*Ic;
disp("SOLUTION (c)");
disp(sprintf("The iron loss  is %.0f W",IronLoss));
disp(" "); 
// 
//END

