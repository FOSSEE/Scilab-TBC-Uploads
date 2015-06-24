//pagenumber 113 example 18
clear
resacu=0.1*10^-12;//ampere
u=20+273;//kelvin
voltaf=0.55;//volt
w=1.38*10^-23;
q=1.6*10^-19;
for z=1:2
    if z==2 then
        u=100+273;
        disp("current at 100celsius rise");
    end
    voltag=w*u/q;
    i1=(10^-13)*(exp((voltaf/voltag))-1);
    if z==2 then
        i1=(256*10^-13)*((exp(voltaf/voltag)-1));
    end
    disp("current   =   "+string((i1))+"ampere");
end

