// Example 3.23: Output voltage and transfer characteristic curve
clc, clear
t=[-6:0.001:6];
vin=6*sin(2*%pi*t/12); // Input voltage in volts
// Sketching of output voltage
for i=1:length(vin)
    if vin(i)>=2 then
        // From Fig. 3.54(b), D1 ON and D2 OFF
        I1=(vin(i)-2)/(10e3+10e3); // in amperes
        vo(i)=vin(i)-I1*10e3; // in volts
    elseif vin(i)>=-4 then
        // both D1 and D2 OFF
        vo(i)=vin(i);
    else
        // From Fig. 3.54(c), D1 OFF and D2 ON   
        vo(i)=-4; // in volts
    end
end
plot(t,vin,"--");
plot(t,vo);
xtitle("Output voltage and input voltage","ωt","vo,vin");
legend("vin","vo");
// Sketching of transfer characteristic curve
scf(1);
plot2d(vin,vo,rect=[-6,-6,6,6]);
xtitle("Transfer characteristic curve","vin","vo");