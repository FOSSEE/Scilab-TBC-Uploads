//Ex8_3
clc
R11=1*10^(3)
disp("R11= "+string(R11)+ " ohm")  // resistance at input terminal of OP-AMP Adder
RF=100*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
R12=10*10^(3)
disp("R12= "+string(R12)+ " ohm")  // resistance at input terminal of OP-AMP  Adder
R13=100*10^(3)
disp("R13= "+string(R13)+ " ohm")  // resistance at input terminal of OP-AMP  Adder
disp("vo = -("+string(RF/R11)+"vs1 +"+string(RF/R12)+"vs2 +"+string(RF/R13)+"vs3)") // output voltage of opamp adder in terms of input vs1,vs2 vs3

// for average value of input signal
n = 3// given inputs are '3'
R11 = n*RF
R12 = n*RF
R13 = n*RF
disp("vo = -("+string(RF/R11)+" vs1 +"+string(RF/R12)+" vs2 +"+string(RF/R13)+ " vs3)") // output voltage of opamp adder 


// note : the output voltage of inverting adder is negative 
// but while calculating weighted output voltage in above question ..author has neglected  or miss the negative sign
