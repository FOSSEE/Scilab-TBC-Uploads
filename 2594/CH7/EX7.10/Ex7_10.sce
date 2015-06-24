clc
ro=500*10^3
disp("ro = "+string(ro)+" ohm") //initializiation the value of output resistance .
Vce1=7
disp("Vce1 = "+string(Vce1)+" V") //initializiation the initial value of collector emitter voltage .
Vce2=1
disp("Vce2 = "+string(Vce2)+" V") //initializiation the final value of collector emitter  voltage .
Vce=6
disp("change in the collector-emitter voltage,Vce1-Vce2 = "+string(Vce)+" V") //calculation.
Ic=(Vce/ro)
disp("change in the collector current,Ic=(Vce/ro))="+string(Ic)+" A")//calculation
