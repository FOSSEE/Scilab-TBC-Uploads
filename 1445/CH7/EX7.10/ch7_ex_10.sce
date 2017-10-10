//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 10

disp("CHAPTER 7");
disp("EXAMPLE 10");

//VARIABLE INITIALIZATION
v1=6600;                        //primary voltage in Volts
v2=220;                         //secondary voltage in Volts
coreA=0.05;                     //core section m^2
fluxD=1.2;                      //flux density in wm/m^2
f=50;                           //Hz

//SOLUTION
//E1=4.44.f.N1.φm
phiM=coreA*fluxD;
N1=v1/(4.44*f*phiM);
N1=round(N1);
//
//N2=N1.E2/E1
N2=N1*(v2/v1);
N2=round(N2);
disp(sprintf("The no. of turns on HT side is %f",N1));
disp(sprintf("The no. of turns on LT side is %f",N2));
disp(" "); 
// 
//END

