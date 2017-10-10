//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 38

clc;
disp("CHAPTER 7");
disp("EXAMPLE 38");

//220/115 V 25 Hz single phase transformer
//VARIABLE INITIALIZATION
v1=220;                                    //primary voltage in Volts
v2=115;                                     //secondary voltage in Volts
f1=25;                                      //frequency rating of the transformer in Hz
f2=50;                                      //frequency of the connected load
//loads
V=440                                       // i Volts
We1=100;                                     //in Watts at 220 V, eddy losses
Pc1=2*We1;                                    //Total iron losses which equals We+Wh due to eddy and hysteresis
Wh1=Pc1-We1;
//
//SOLUTION  
//since we know that We=kh.f.B^1.6 and Wh=Ke.Kf^2.f^2.B^2
//since all being constant exept frequency, we may take We2/We1=f2^2/f1^2
//and Wh2/Wh1=f2/f1
//flux density in both cases is same as in second case voltage and frquency both are doubled
//find values for We2 and Wh2, whence Pc2=We2+Wh2
We2=f2^2*We1/f1^2;
Wh2=f2*Wh1/f1;
Pc2=We2+Wh2;
disp(sprintf("The total no load losses at 400 V is %.0f W",Pc2));
disp(" "); 
// 
//END
