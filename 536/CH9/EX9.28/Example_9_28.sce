clear;
clc;

printf('Example 9.28');
//Using Kern's method design Shell n tube heat exchanger

mh = 30;            //[kg/s] Hot fluid flow rate
Thi = 370;         //[K] Hot Fluid Inlet Temperature
Tho = 315;         //[K] Hot Fluid outlet Temperature
Tci = 300;         //[K] Cold Fluid Inlet Temperature
Tco = 315;         //[K] Cold Fluid Outlet Temperature
cpc = 4.18*10^3;        //[J/kg.K] Thermal Conductivity of Cold Fluid
//From table A1.3 at mean temperature 343 K
cph = 2.9*10^3;            //[J/kg.K] Thermal Capacity of Hot fluid

q = mh*cph*(Thi-Tho);        //[kW] Heat load
mc = q/(cpc*(Tco-Tci));      //[kg/s] Flow of cooling water

Tln = ((Thi-Tho)-(Tco-Tci))/(log((Thi-Tho)/(Tco-Tci)));    //[K] Logarithm mean temperature difference

//for one-shell side pass and two-tube side pass Equation 9.213
X = (Thi - Tho)/(Tco-Tci);
Y = (Tco-Tci)/(Thi - Tci);

//From Figure 9.757
F = .85;
//From Table 9.17
U = 500        //[W/m^2.K]
A = q/(F*Tln * U);
//Thus COnvenient tubes to bo used
od = .02        //[m] outer dia
id = .016       //[m] inner dia
l = 4.83        //[m] effective tube length

s = %pi*od*l;
N = A/s;
//From equation 9.211
db = (1210/.249)^(2.207)^-1*20/1000;            //[m]
//From figure 9.71
dc = .068        //[m] diametric clearance between shell and tubes
ds = db+dc            //[m] Shell dia

//Tube-Side Coefficient
//From equation 9.218
Ac = %pi/4*id^2            //[m^2] Cross sectional area
Ntp = N/2;

Af = N/2*Ac        //[m^2] Tube side flow area
mw = 76.3/Af            //[kg/m^2.s] Mass velocity of water
rho = 995        //[kg/m^3] mas density of water
u = mw/rho            //[m/s] water velocity

//At mean temperature 308 K
vu = .8*10^-3            //[N.s/m^2] viscosity
k = .59                //[W/m.K]

Re = id*u*rho/vu;
Pr = cpc*vu/k;
ld = l/id;
//from figure 9.77
jh = 3.7*10^-3
hi = jh*Re*Pr^.3334*.59/id;            //[W/m^2.K]

//Shell-Side Coefficient
//Baffle packing will be taken as 20percent of shell dia
dbf = .20*ds;        //[m] Baffle Dia
tb = 1.25*20*10^-3        //[mm] Tube Pitch
//From equation 9.226
As = (25-20)/25*10^3*(ds*Ac)            //[m^2]
Gs = 30/As;                        //[kg/m^2.s]
//From Equation 9.228
de = 1.1*(.025^2-.917*od^2)/od;            //[m]
//At mean temperature 343 K Butyl Alcohol
rho2 = 780            //[kg/m^3] density
vu2 = .8*10^-3            //[N.s/m^2] viscosity
Cp2 = 3.1*10^3                //[J/kg.K] Heat capacity
k2 = .16                //[W/m.K]
//Equation 9.229
Re2 = Gs*de/vu2;
Pr2 = Cp2*vu2/k2;
//From figure 9.81
jh2 = 5*10^-3;
//Equation 9.230
hs = jh2*Re2*Pr2^.334*k2/de;

//Overall Coefficient
//from Table 9.16
k3 = 50                //[W/m.K]        Thermal Conductivity
Rw = .00020            //[m^2.K/W]      Scale Resistances 
Ro = .00015            //[m^2.K/W]      Resistance for organic

U = [1/hs + Rw + .5*(od-id)/k3 + Ro*od/id+od/(id*hi)]^-1

//From figure 9.78
jf = 4.5*10^-3;
n = 2;
delP = n*[4*jf*(4.830/id) + 1.25]*(rho*u^2);
u2 = Gs/rho2;
jf2 = 4.6*10^-2;
N2 = 1;
delP2 = N2*[4*jf2*(4.830/od)*(1005/14.2)]*(rho2*u2^2);

//Increasing the baffle spacing pressure drop is reduced one-fourth
delPs = delP2/4;

ho = hs*(.5)^.8;            //[W/m^2.K]
U2 = [1/ho + Rw + .5*(od-id)/k3 + Ro*od/id+od/(id*hi)]^-1
printf('\n\n Overall Coefficient of %i W/m^2.K \n Number of tubes/pass = %i\n Number of tubes required = %i ',U2,Ntp,N)
//END