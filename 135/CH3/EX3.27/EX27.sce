// Example 3.27: vo vs vin
clc, clear
vin=[0:50]; // Input voltage in volts
// Sketching of vo vs vin
for i=1:length(vin)
    if vin(i)<3 then
        // From Fig. 3.58(b), D1 ON, D2 and D3 OFF
        I1=6/(5e3+5e3); // in amperes
        vo(i)=I1*5e3; // in volts
    elseif vin(i)<9 then
        // From Fig. 3.58(c), D1 and D3 ON, D2 OFF
        // Applying Kirchoff's laws
        vo(i)=0.5*vin(i)+1.5; // in volts
    elseif vin(i)<30 then
        // From Fig. 3.58(d), D3 ON, D1 and D2 OFF
        I3=vin(i)/(2.5e3+5e3); // in amperes   
        vo(i)=I3*5e3; // in volts
    else
        // From Fig. 3.58(e), D2 and D3 ON, D1 OFF
        // Applying Kirchoff's laws
        vo(i)=4*vin(i)/7+20/7; // in volts
    end
end
plot(vin,vo);
xtitle("Voltage transfer characteristics","vin","vo");