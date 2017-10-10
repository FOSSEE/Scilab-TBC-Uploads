//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 31

clc;
disp("CHAPTER 7");
disp("EXAMPLE 31");

//single phase transformer having 400 primary and 1000 secondary turns
//VARIABLE INITIALIZATION 
N1=400;
N2=1000;
coreA=60;                                //net core area in cm^2
v1=500;                                  //primary voltage in Volts 
f=50;                                    //frequency

//
//SOLUTION  
//v1=E1=4.44.Φm.N1.f Volts
phiM=v1/(4.44*N1*f);
//flux density Bm=Φm/area
Bm=phiM/coreA;                          //lines per cm
//voltage per turn
vpt=v1/N1;
v2=N2*vpt;
//
disp(sprintf("The maximum flux density is %.3fx10^-5 Wb per cm^2",Bm*10^5));//text book anser is 9383 lines per cm^2
disp(sprintf("The secondary voltage is %.0f V",v2));
disp(" "); 
// 
//END
