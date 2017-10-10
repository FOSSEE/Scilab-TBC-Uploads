clc;funcprot(0);//EXAMPLE 16.7
//page 500
//INITIALISATION OF VAREIABLES
sig1=980;...............//Initial Stress of POlyisoprene in psi
sig2=1000;.............//Fnal Stress of POlyisoprene in psi
sig3=1500;.............// Stress of POlyisoprene after one year in psi
t1=6;................//time in weeks
t2=52;.............//time in weeks
//CALCULATIONS
Rt=-t1/(log(sig1/sig2));.....//Relaxation time in weeks
sig=sig3/(%e^(-t2/Rt));........//Initial Stress to be placed in psi
disp(round(Rt),"Relaxation time in weeks:")
disp(round (sig),"Initial Stress to be placed in psi:")
