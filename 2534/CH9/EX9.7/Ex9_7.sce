//Ex9_7
clc
//parameters of JFET 1:
rd1 = 20*10^3//resistance
gm1 = 3*10^-3//conductance
disp("rd1 = "+string(rd1)+"ohm")
disp("gm1 = "+string(gm1)+"mho")
//parameters of JFET 2:
rd2 = 40*10^3//resistance
gm2 = 4*10^-3//conductance
disp("rd2 = "+string(rd2)+"ohm")
disp("gm2 = "+string(gm2)+"mho")
//the given JFETs are connected in parallel manner
micro = [(rd1*rd2*gm1)+(rd1*rd2*gm2)]/(rd1+rd2)
disp("micro = (rd1*rd2*gm1)+(rd1*rd2*gm2)/(rd1+rd2) = "+string(micro))//amplification factor
