// Example 5.11: IC1, IC2, IC3
clc, clear
bta=125;
VBE=0.7; // in volts
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
// From Fig. 5.27
VC=9; // in volts
RC=30; // in kilo-ohms
RE=1.94; // in kilo-ohms
I_ref=(VC-VBE)/RC; // in mili-amperes
IC=I_ref*bta/(3+bta); // in mili-amperes
for i=0.01:0.001:0.5
    if abs(VT*log(IC/i)/(i*(1+1/bta))-RE)<=0.1 then
        break;
    end
end
disp(IC,"IC1 (mA) =");
disp(IC,"IC2 (mA) =");
disp(i,"IC3 (mA) =");