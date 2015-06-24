// scilab Code Exa 13.2 Mach Number and loss coefficient
t=650; // in degree C
T01=t+273; // in Kelvin
p3=1; //  Exit Pressure in bar
gamma=1.4;
sigma=0.66; // blade-to-isentropic speed ratio
N=16e3; // rotor Speed in RPM
b2=5/100; // blade height at entry in m
alpha_2=20;  //  air angle at nozzle exit
d_r=0.45; // rotor diameter ratio(d3/d2)
p01_3=3.5; // total-to-static Pressure Ratio(p01/p3) 
n_N=0.95; // Nozzle Efficiency 
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=287;
n=(gamma-1)/gamma;
c_0=sqrt(2*cp*T01*(1-(p01_3^(-n))))
u_2=sigma*c_0;
Mb0=u_2/sqrt(gamma*R*T01);

// part(a) Mach number at nozzle exit
M2=Mb0/(cosd(alpha_2)*sqrt(1-(0.5*(gamma-1)*(Mb0^2)*(secd(alpha_2)^2))));
disp(M2,"(a)the flow Mach number at nozzle exit M2=")

// part(b)rotor exit Relative Mach number
d2=60*u_2/(%pi*N);
d3=d2*d_r;
c_r2=u_2*tand(alpha_2);
u3=%pi*d3*N/60;
beta3=atand(c_r2/u3);
w3=u3/(cosd(beta3));
T03=T01-((u_2^2)/cp);
T3=T03-((c_r2^2)/(2*cp));
a3=sqrt(gamma*R*T3);
M3_rel=w3/a3;
disp(M3_rel,"(b)the Relative Mach number at rotor exit is")

// part(c) Nozzle enthalpy loss coefficient
T2=T3+((0.5*(u_2^2))/cp);
c2=u_2/(cosd(alpha_2));
T2s=T01-((0.5*(c2^2))/(cp*n_N));
c2=u_2/(cosd(alpha_2));
zeeta_N=cp*(T2-T2s)/(0.5*(c2^2));
disp(zeeta_N,"(c)the Nozzle enthalpy loss coefficient is")

// part(d)rotor enthalpy loss coefficient

p01_2=(1-(((0.5*(c2^2))/(cp*n_N))/T01))^(-1/n);
p01=p3*p01_3;
p2=p01/p01_2;
T3s=T2/((p2/p3)^n);
zeeta_R=cp*(T3-T3s)/(0.5*(w3^2));
disp(zeeta_R,"(d)the rotor enthalpy loss coefficient is")
disp("comment: Nozzle enthalpy loss coefficient value is not correctly calculated in the textbook. the above value is correct.")
