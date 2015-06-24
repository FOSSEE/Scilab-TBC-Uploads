// Example 3.24: Voltage transfer characteristics
clc, clear
vin=[-2.5:2.5]; // Input voltage in volts
// Obtaining thevnin's equivalent circuit on LHS of XX'
V_th=vin*7.5e3/(7.5e3+15e3); // in volts
R_th=15e3*7.5e3/(15e3+7.5e3); // in ohms
// Sketching of voltage transfer characteristics
// From thevnin's equivalent circuit in Fig. 3.55(b)
for i=1:length(vin)
    if vin(i)>1.8 then
        I1=(V_th(i)-0.6)/(5e3+R_th); // in amperes
        vo(i)=I1*5e3; // in volts
    elseif vin(i)>-1.8 then
        vo(i)=0;
    else
        I2=(V_th(i)+0.6)/(4e3+R_th); // in amperes   
        vo(i)=I2*5e3; // in volts
    end
end
plot(vin,vo);
xtitle("Voltage transfer characteristics","vin","vo");