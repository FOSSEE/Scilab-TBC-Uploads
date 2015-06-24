// Example 3.21: (a) Transfer characteristics and output
//               (b) Transfer characteristics and output
clc, clear
Vy=0.6; // in volts
Rf=100; // in ohms
t=[-40:0.001:40];
vin=40*sin(2*%pi*t/80); // Input voltage in volts

// Part (a)
// From Fig. 3.49(a)
// Sketching of transfer characteristics
for i=1:length(vin)
    if vin(i)<5.6 then
        vo(i)=vin(i); // in volts
    else
        ID=(vin(i)-5.6)/(4.9e3+Rf); // in amperes
        vo(i)=vin(i)-ID*4.9e3; // in volts
    end
end
plot(vin,vo);
xtitle("Part (a) - Transfer characteristics","vin","vo");
// Sketching of output
scf(1);
plot(t,vin,"--");
plot(t,vo);
xtitle("Part (a) - Output voltage and input voltage","ωt","vo,vin");
legend("vin","vo");

// Part (b)
// From Fig. 3.49(b)
// Sketching of transfer characteristics
for i=1:length(vin)
    if vin(i)>-0.6 then
        vo(i)=vin(i); // in volts
    else
        ID=(vin(i)+0.6)/(9.9e3+Rf); // in amperes
        vo(i)=vin(i)-ID*9.9e3; // in volts
    end
end
scf(2);
plot(vin,vo);
xtitle("Part (b) - Transfer characteristics","vin","vo");
// Sketching of output
scf(3);
plot(t,vin,"--");
plot(t,vo);
xtitle("Part (b) - Output voltage and input voltage","ωt","vo,vin");
legend("vin","vo");