// Example 3.26: Transfer characteristics and output and input voltage
clc, clear
T=60; // Let T = 60 seconds
t=[0:T];
vin=120*t/T; // Input voltage in volts
// From Fig. 3.57(a)
// Sketching of transfer characteristics
for i=1:length(vin)
    if vin(i)<=15 then
        // Both D1 and D2 OFF
        vo(i)=15; // in volts
    elseif vin(i)<=105 then
        // D1 OFF and D2 ON
        I2=(vin(i)-15)/(100e3+200e3); // in amperes
        vo(i)=vin(i)-I2*100e3; // in volts
    else 
        // Both D1 and D2 ON
        vo(i)=75; // in volts
    end
end
plot(vin,vo);
xtitle("Transfer characteristics","vin","vo");
// Sketching of output
scf(1);
plot(t,vin,"--");
plot(t,vo);
xtitle("Output voltage and input voltage","ωt","vo,vin");
legend("vin","vo");