//Ex9_2
clc
//calculating for conductance:
delta_ID = (4*10^-3)-(2*10^-3)//change in drain current in amperes
delta_VGS = 3-2//chande in gate-source voltage in volts
disp("delta_ID = "+string(delta_ID)+"A")
disp("delta_VGS = "+string(delta_VGS)+"V")
gm = delta_ID/delta_VGS//condutance at VDS = constant
disp("gm = delta_ID/delta_VGS")
disp("gm = "+string(gm)+" mho")
//calculating for drain resistance:
delta_ID = (3.2-3)*10^-3//change in drain current in amperes
delta_VDS = (12-8)//change in voltage across drai and source
disp("delta_ID = "+string(delta_ID)+"A")
disp("delta_VDS = "+string(delta_VDS)+"V")
rd = delta_VDS/delta_ID
disp("rd = delta_VDS/delta_ID")
disp("rd = "+string(rd)+" ohm")
//calculating for micro:
micro  = rd*gm//amplification factor
disp("micro = rd*gm")
disp("micro = "+string(micro))
