// Example 3.25: (a) Output voltage waveform
//               (b) Transfer curve
clc, clear
t=[0:0.001:12];
vin=15*sin(2*%pi*t/12); // Input voltage in volts
// From Fig. 3.56(a)
// Sketching of output voltage waveform
for i=1:length(vin)
    if vin(i)<16/3 then
        // D1 OFF and D2 ON
        I2=(10-3)/(20e3+10e3); // in amperes
        vo(i)=10-I2*20e3; // in volts
    elseif vin(i)<=10 then
        // both D1 and D2 ON
        vo(i)=vin(i);
    else
        // D1 ON and D2 OFF   
        vo(i)=10; // in volts
    end
end
plot(t,vin,"--");
plot(t,vo);
xtitle("Output voltage and input voltage","ωt","vo,vin");
legend("vin","vo");
// Sketching of transfer curve
scf(1);
plot2d(vin,vo,rect=[0,0,15,12]);
xtitle("Transfer characteristic curve","vin","vo");