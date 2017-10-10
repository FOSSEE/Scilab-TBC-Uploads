//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 10

clc;
disp("CHAPTER 7");
disp("EXAMPLE 10");

//6600/220 V single phase transformer
//VARIABLE INITIALIZATION
v1=6600;                        //primary voltage in Volts
v2=220;                         //secondary voltage in Volts
coreA=0.05;                     //core section m^2
fluxD=1.2;                      //flux density in wm/m^2
f=50;                           //Hz

//SOLUTION
//E1=sqrt(2).pi.f.N1.φm
//flux density = Phimax/core area
phiM=coreA*fluxD;
N1=v1/(4.44*f*phiM);    //4.44=sqrt(2).pi
N1=round(N1);
//
//N2=N1.E2/E1
N2=N1*(v2/v1);
N2=round(N2);
disp(sprintf("The no. of turns on HT side is %d",N1));
disp(sprintf("The no. of turns on LT side is %d",N2));
disp(" "); 
// 
//END

