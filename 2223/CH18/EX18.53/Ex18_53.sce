// scilab Code Exa 18.53 NPSH and Thoma Cavitation Coefficient

H=60; // head developed in m
c1=8; // exit velocity in m/s
pa=1.0133; // ambient pressure in bar
rho=1e3;
n_d=0.8; // Efficiency of the Draft Tube
g=9.81; // Gravitational acceleration in m/s^2
ta=30; // ambient temperature of water in degree C
pv=0.0424; // vapour pressure of water at t value
Hv=pv*1e5/(rho*g);
//Q=c1*A1=c2*A2
Ar(1)=1.2; // draft tube area ratio(A2/A1=c1/c2)
Ar(2)=1.4;
Ar(3)=1.6;
Hs=2.5; // vertical length of the draft tube between the turbine exit and the tail race in m
Ha=pa*1e5/(rho*g);
for i=1:3
    Hsd=(c1^2)*(1-(1/(Ar(i)^2)))/(2*g); // ideal head gained by the draft tube
    Hd=n_d*Hsd; //Actual head gained by the draft tube
    disp(Ar(i),"for Area Ratio Ar=")
    disp("m",Hd,"(a)Actual head gained by the draft tube is")
    H1=Ha-(Hs+Hd);
    NPSH=H1-Hv;
disp(NPSH,"(b)NPSH=")
sigma=NPSH/H;
disp(sigma,"and Cavitation parameter(Thoma Number) sigma=")
end
