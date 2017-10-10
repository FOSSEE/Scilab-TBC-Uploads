//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 31

disp("CHAPTER 7");
disp("EXAMPLE 31");

//VARIABLE INITIALIZATION 
N1=400;
N2=1000;
coreA=60;                                //net core area in cm^2
v1=500;                                  //primary voltage in Volts 
f=50;                                    //

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
disp(sprintf("The maximum flux density is %f10^-5 Wb per cm^2",Bm*10^5));
disp(sprintf("The secondary voltage is %f V",v2));
disp(" "); 
// 
//END
