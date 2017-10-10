//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 39

clc;
disp("CHAPTER 7");
disp("EXAMPLE 39");

//220/440 v 50 Hz transformer
//VARIABLE INITIALIZATION
v1=220;                                             //primary voltage in Volts
v2=440;                                             //secondary voltage in Volts
f1=50;                                              //rated frequency in Hz

//loads
V=110;
f2=25;                                              //frquency of the applied load
//say, else computation may not be possible using computer
Pout1=100;                                              //in watt, just assumed for computational purposes for the 220V supply
We1=0.01*Pout1;                                         //in Watts at 220 V, eddy losses which are 1% of the output at 220V
Wh1=0.01*Pout1;                                         //in Watts at 220 V, hysteresis losses which are 1% of the output at 220V
//Pc1=We1+Wh1;                                          //Total iron losses which equals We+Wh due to eddy and hysteresis
Pcu1=0.01*Pout1;                                        //copper losses 
//
//SOLUTION  
//since on connecting to half the power ie 110V, the output would get halved
Pout2=Pout1/2;
xPcu=Pcu1/Pout2;
disp(sprintf("The copper losses at 110 V would be %.0f percent of the output",xPcu*100));
//now coming to frequency dependant losses ie eddy and hysteresis 
//since we know that We=kh.f.B^1.6 and Wh=Ke.Kf^2.f^2.B^2
//since all being constant exept frequency, we may take We2/We1=f2^2/f1^2
//and Wh2/Wh1=f2/f1
//find values for We2 and Wh2, whence Pc2=We2+Wh2
We2=f2^2*We1/f1^2;
Wh2=f2*Wh1/f1;
xWe=We2/Pout2;
xWh=Wh2/Pout2;
disp(sprintf("The eddy losses at 110 V would be %.2f percent of the output",xWe*100));
disp(sprintf("The hysteresis losses at 110 V would be %.2f percent of the output",xWh*100)); 
disp(" "); 
// 
//END
