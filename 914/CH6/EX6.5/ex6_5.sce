clc;
warning('off');
printf("\n\n example6.5 - pg232");
// given
UzmaxbyU=24.83;
roUbyv=2312;
Re=100000;
// using the formula Et/v=95.5*((r/ro)/slope)-1
// from fig 6.6 at Re=100000
rbyro=[0 0.040 0.100 0.200 0.300 0.4 0.5 0.6 0.7 0.8 0.9 0.960 1];
slope=[0 0.105 0.112 0.126 0.144 0.168 0.201 0.252 0.336 0.503 1.007 2.517 94.59];
for i=2:13
    Etbyv(i)=95.5*((rbyro(i))/slope(i))-1;
end
clf;
xtitle("eddy viscosity ratio versus dimensionless radius","r/ro","Et/v");
plot(rbyro,Etbyv);
