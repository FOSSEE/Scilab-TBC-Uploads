clc;
i=54946;  //current in Ampere
d=1;  //distance in ft
r=0.33;  //in metre
f=425.89;  //frequency in Hz
h=i/(2*(%pi)*r);  //calculating H field
disp(h,"H field in A/metre = ");  //displaying result
mo=(4*(%pi)*10^-7);  //constant
b=mo*h;  //calculating B field
disp(b,"B field in Tesla = ");  //displaying result
area=0.02;  //area in metre square
flux=b*area;  //calculatin flux
disp(flux,"Flux in Wb = ");  //displaying result
v=(2*(%pi)*f);  //calculating voltage
disp(v,"Voltage in volt = ");  //displaying result