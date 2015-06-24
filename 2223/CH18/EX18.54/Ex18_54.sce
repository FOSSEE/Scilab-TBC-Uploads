// scilab Code Exa 18.54 Maximum Height of Hydro Turbines

H=52; // head developed in m
c1=6.5; // exit velocity in m/s
pa=1.0133; // ambient pressure in bar
rho=1e3;
n_d=0.75; // Efficiency of the Draft Tube
g=9.81; // Gravitational acceleration in m/s^2
ta=20; // ambient temperature of water in degree C
sigma_cr=0.1;
pv=0.023; // vapour pressure of water at t value(from tables)
Hv=pv*1e5/(rho*g);
//Q=c1*A1=c2*A2
Ar=1.5; // draft tube area ratio(A2/A1=c1/c2)
Z(1)=0; // altitude in m
Z(2)=2500;
Z(3)=3000;
Z(4)=4000;
p(1)=pa; // at altitude Z=0
p(2)=0.747; // at Z=2500m
p(3)=0.701; // at altitude Z=3000m
p(4)=0.657; // at Z=4000m
 Hsd=(c1^2)*(1-(1/(Ar^2)))/(2*g); // ideal head gained by the draft tube
    Hd=n_d*Hsd; //Actual head gained by the draft tube
Ha=pa*1e5/(rho*g);
for i=1:4
        disp("m",Z(i),"For Z=")
        Ha=p(i)*1e5/(rho*g);
    H1=Ha-(Hsd+Hd);
    Hs=Ha-((sigma_cr*H)+Hd+Hv); // vertical length of the draft tube between the turbine exit and the tail race in m
    disp("m",Hs,"the maximum height of the turbine exit above the tail race is")
    NPSH=sigma_cr*H;
disp(NPSH,"NPSH=")
end
