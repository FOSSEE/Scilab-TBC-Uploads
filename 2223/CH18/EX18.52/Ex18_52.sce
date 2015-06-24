// scilab Code Exa 18.52 NPSH for Centrifugal pump

H=30; // head developed in m
ds=0.15; // suction pipe diameter in m
f=0.005; //Coefficient of friction for the suction pipe
pa=1.013; // atmospheric pressure in bar
As=%pi/4*(ds^2); // Cross-sectional Area of the suction pipe in m2
rho=1e3; // density of water in kg/m3
g=9.81; // Gravitational acceleration in m/s^2
t=30; // temperature of water in degree C
pv=0.0424; // vapour pressure of water at t value
Hv=pv*1e5/(rho*g);
Z(1)=0; // altitude in m
Z(2)=2500;
p(1)=pa; // at altitude Z=0
p(2)=0.747; // at Z=2500m
Q(1)=0.065; // discharge in m3/s of water
Q(2)=0.1;
Q(3)=0.15;
Hs(1)=3; // vertical length of the suction pipe in m
Hs(2)=5;
for i=1:3
    disp("m3/s",Q(i),"when Q=")
    cs=Q(i)/As;
    for k=1:2
        disp("m",Hs(k),"and Hs=")
        delHf=4*f*(Hs(k)/ds)*(cs^2/(2*g));
        for j=1:2
        disp("m",Z(j),"and Z=")
        Ha=p(j)*1e5/(rho*g);
    H1=Ha-(Hs(k)+(cs^2/(2*g))+delHf);
    NPSH=H1-Hv;
disp(NPSH,"NPSH=")
sigma=NPSH/H;
disp(sigma,"Cavitation Coefficient sigma=")
end
end
end
