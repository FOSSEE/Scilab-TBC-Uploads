// Example 3.22: (a) Transfer characteristics
//               (b) Transfer characteristics
clc, clear
t=[0:0.1:20]; // in mili-seconds
vin=30*t/10; // Input voltage in volts
// From Fig. 3.52(b)

// Part {a}
// Sketching of transfer characteristics
for i=1:length(vin)
    if vin(i)>25 then
        vo(i)=5; // in volts
    else
        IL=vin(i)/(200+50); // in amperes
        vo(i)=IL*50; // in volts
    end
end
plot2d(vin,vo,rect=[0,0,60,6]);
xtitle("Part (a) - Transfer characteristics","vin","vo");

// Part (b)
// Sketching of transfer characteristics
Vy=0.5; // in volts
Rf=40; // in ohms
VA=5+0.5; // in volts
for i=1:length(vin)
    if vin(i)<27.5 then
        IL=vin(i)/(200+50); // in amperes
        vo(i)=IL*50; // in volts
    else
        IL=(vin(i)+27.5)/500; // in amperes
        vo(i)=IL*50; // in volts
    end
end
scf(1);
plot2d(vin,vo);
xtitle("Part (b) - Transfer characteristics","vin","vo");