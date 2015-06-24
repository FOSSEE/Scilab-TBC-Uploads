//Exa2.41
clc;
clear;
close;
// given data
t1=20;// in degree C
t2=36;// in degree C
alpha_20=0.0043;// in per degree C  (Temperature Coefficient)
InsulationResistance=480*10^6;// in ohm
copper_cond_res=0.7;// in ohm  (copper conductor resistance)
l=500*10^-3;// in kilo meter (length)
R1_desh=InsulationResistance * l;// in ohm

// From Formula log(R2_desh)= log(R1_desh-K*(t2-t1))
// K= 1/(t2-t1)*log(R1_desh/R2_desh)
// since when t2-t1=10 degree C and R1_desh/R2_desh= 2

K=1/10*log(2);

// (i) Insulation resistance at any temperature t2, R2_desh is given by
  logR2_desh= log(R1_desh)-(t2-t1)/10* log(2);
  R2_desh= %e^logR2_desh
  
  disp("(i) Insulation resistance at any temperature : "+string(R2_desh*10^-6)+" Mega ohm");
  
// (ii) 
    R_20= copper_cond_res/l;// in ohm
    R_36=R_20*[1+alpha_20*(t2-t1)];
    
    disp("Resistance at 36 degree C is : "+string(R_36)+" ohm")
    