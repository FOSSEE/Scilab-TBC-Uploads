clc
disp("(i) By a carbon balance")

// a C8H18 + 78.1N2 + 78.1*(21/79)O2 → 8.9CO2 + 8.2CO + 4.3H2 + 0.5CH4 + 78.1N2 + x H2O
a=(8.9+8.2+0.5)/8;

AF1=(78.1*28+78.1*21/79*32)/a/(8*12+1*18);
disp("Air fuel ratio =")
disp(AF1)


disp("(ii) By a hydrogen-oxygen balance ")

// a C8H18 + b O2 + b*(79/21)N2 → 8.9CO2 + 8.2CO + 4.3H2 + 0.5CH4 + b*(79/21)N2 + x*H2O

a=(8.9+8.2+0.5)/8;
x=(18*a-4.3*2-4*0.5)/2;
b=(8.9*2+8.2+x)/2;

AF2=(b*32+b*(79/21)*28)/a/(8*12+1*18);
disp("Air fuel ratio =")
disp(AF2)