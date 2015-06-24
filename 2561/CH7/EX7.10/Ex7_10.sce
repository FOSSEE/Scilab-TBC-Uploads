//Ex7_10
clc
gm=10*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance 
Cgs=5*10^(-12)
disp("Cgs= "+string(Cgs)+ " farad")  // capacitance between gate-source
Cds=1*10^(-12)
disp("Cds= "+string(Cds)+ " farad")  // capacitance between drain-source
rd=50*10^(3)
disp("rd= "+string(rd)+ " ohm")  //Drain resistance
RG=10*10^(6)
disp("RG= "+string(RG)+ " ohm")  //Gate resistance
Rse=1*10^(3)
disp("Rse= "+string(Rse)+ " ohm")  //Gate resistance
L=0.5
disp("L= "+string(L)+ " H")  //Inductance
C2=0.05*10^(-12)
disp("C2= "+string(C2)+ " farad")  // Crystal parameter 
C1=1*10^(-12)
disp("C1= "+string(C1)+ " farad")  // Crystal parameter
disp("part(i)") 
x=C1+[(Cds*Cgs)/(Cds+Cgs)]
CT=1/[(1/C2)+(1/x)]
disp("CT= "+string(CT)+ " farad")  // Equivalent series-resonating capacitance
disp("part(ii)") 
fo=sqrt(2)/[2*%pi*sqrt(L*CT)]
disp("fo= sqrt(2)/[2*%pi*sqrt(L*CT)]="+string(fo)+" Hz")// frequency of oscillations
disp("part(iii)")
z=sqrt((L*C1*C2)/(C1+C2))
fp=1/[2*%pi*z]
disp("fp= "+string(fp)+" Hz")// parallel-resonant frequency
p=sqrt(L*C2)
fs=1/[2*%pi*p]
disp("fs= "+string(fs)+" Hz")// series-resonant frequency
Q=[sqrt(L/C2)]/(Rse)
disp("Q=[sqrt(L/C2)]/(Rse)= "+string(Q))// Quality factor
disp("part(iv)")
AB=gm*rd*(Cds/Cgs)
disp("AB=gm*rd*(Cds/Cgs)= "+string(AB))//Loop gain
T_bias=RG*(Cgs+Cds)
disp("T_bias=RG*(Cgs+Cds)= "+string(T_bias)+"s")//Bias Time-Constant
T_r = 1/(2*%pi*fo)
disp("T_r =1/(2*%pi*fo)= "+string(T_r)+"s")//resonant Time-Constant for 'fo'
disp("for proper operation T_bias >> T_r")


// in part (ii)... value calculated for series resonant frequecy 'fo' is wrong in textbook.
// NOTE: in part(iii)... there is a misprint in the calculated value of Quality factor 'Q' in the textbook.
//I have used T_r instead of 1/wo (given in the book)





