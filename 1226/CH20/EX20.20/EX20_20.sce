clc;funcprot(0);//EXAMPLE 20.20
// Initialisation of Variables
ns=2;.........//No of stages
p1=1;........//Suction pressure in bar
p2=7.4;.......//Intercooler pressure in bar
p3=42.6;.......//Delivery pressure in bar
t1=15+273;......//Suction temperature in K
n=1.3;........//Compression index
R=0.287;.......//Gas constant in kJ/kgK
dlp=0.09;.......//Diameter of low pressure cylinder in m
dhp=0.03;.......//Diameter of high pressure cylinder in m
etav=0.9;.....//Volumetric efficiency
//Calculations
W=n*(1/(n-1))*R*t1*(((p2/p1)^((n-1)/n))+((p3/p2)^((n-1)/n))-2);
disp(W,"Work done in compressing 1 kg of gas in kJ:")
//Given that stroke length is same in both cases
rV=p2/p1;.........//Ratio of volumes
rECV=((dlp/dhp)^2)*etav;.........//Ratio of effective cylinder volumes
if (rECV>rV) then disp("Pressure in the intercooler would rise.")
else if (rECV<rV) then disp("Pressure in the intercooler would fall")
    end
end
