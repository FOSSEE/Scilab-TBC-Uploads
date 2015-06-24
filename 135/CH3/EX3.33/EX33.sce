// Example 3.33: vo
clc, clear
t=[0:0.001:12];
vin=10*sin(2*%pi*t/4); // Input voltage in volts
// From Fig. 3.73
vint=vin+5;
for i=1:length(vint)
    if vint(i)>0 then
        // Diode is OFF
        vo(i)=vint(i); // in volts
    else
        break;
    end
end
for i=i:length(vint)
    if vint(i)==-5 then
        break;
    else
        // Diode is ON
        vo(i)=0;
    end
end
for i=i:length(vint)
    // Capacitor is charged to 5 V
    vo(i)=vint(i)+5; // in volts
end
plot2d(t,vo,rect=[0,-5,12,25]);
xtitle("Output voltage","t","vo");