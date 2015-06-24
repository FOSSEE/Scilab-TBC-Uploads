// Example 3.29: Output voltage
clc, clear
Vy=0.5; // in volts
Rf=50; // in ohms
t=[0:5]; // in seconds
vs=10*t/5; // Input voltage in volts
// Output voltage
for i=1:length(vs)
    if vs(i)<6.5 then
        // Diode is OFF
        vo(i)=6; // in volts
    else
        // From Fig. 3.66(a), Diode is ON
        I=(vs(i)-6.5)/(200+Rf+200); // in amperes
        vo(i)=6+I*200; // in volts
    end
end
plot2d(t,vo,rect=[0,0,5,8]);
xtitle("Output voltage","t,ms","vo(t)");