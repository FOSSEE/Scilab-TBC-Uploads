//Example 4_25
clc;
clear;
close;
format('v',9);
//given data : 
T=300;//K
//Part (a)
ND=2*10^14;//cm^-3//Donor
NA=3*10^14;//cm^-3//Acceptor
ni=2.5*10^19;//m^-3//Intrinsic
ni=ni/10^6;//m^-3
n0=-(NA-ND)/2+sqrt([((NA-ND)/2)^2+ni^2]);//cm^-3
p0=-(ND-NA)/2+sqrt([((ND-NA)/2)^2+ni^2]);//cm^-3
disp(n0,"n0 is(cm^-3)");
disp(p0,"p0 is(cm^-3)");
if p0>n0 then
    disp("(a) Since p0>n0, Sample is of p-type.");
end;
//Part (b)
format('v',4);
ND=10^15;//cm^-3
NA=10^15;//cm^-3
p0=poly(0,'p0');
n0=p0+ND-NA;//cm^-3
disp(n0,"(b) n0 is equal to ");
disp("It is Intrinsic Semiconductor")
//Part (c)
disp("Part(c) : ");
format('v',7);
ND=10^16;//cm^-3
NA=10^14;//cm^-3
n0=ND;//cm^-3(For NA<<ND)
p0=ni^2/ND;//cm^-3
disp(n0,"n0 is(cm^-3)");
format('v',9);
disp(p0,"p0 is(cm^-3)");
if p0<n0 then
    disp("(c) Since p0<n0, Sample is of n-type.");
end;
