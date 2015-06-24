//pagenumber 101 example 4
clear
w=0.9;
voltaf=0.05;//volt
revcur=10*10^-6;//ampere
//(1) voltage
volrev=0.026*(log((-w+1)));//voltage at which the reverse saturation current at saturate
resacu=((exp(voltaf/0.026)-1)/((exp(-voltaf/0.026)-1)));//reverse saturation current
disp("voltage at which the reverse saturation current at saturate   =   "+string((volrev))+"volt");
disp("reverse saturation current   =   "+string((resacu))+"ampere");
u=0.1;
for q=1:3
        reverc=revcur*(exp((u/0.026))-1)
        disp("reverse saturation current "+string((u))+"   =   "+string((reverc))+"ampere");
        u=u+0.1;
end




