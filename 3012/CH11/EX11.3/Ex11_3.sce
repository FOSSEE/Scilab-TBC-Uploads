// Given:-
// Part(a)
v = 0.4646                                                                       // specific volume in in m^3/kg
M = 18.02                                                                        // molar mass of water in kg/kmol
// At the specified state, the temperature is 513 K and the specific volume on a molar basis is
vbar = v*M                                                                       // in m^3/kmol
// From Table A-24
a = 142.59                                                                       // (m^3/kmol)^2 * K^.5
b = 0.0211                                                                       // in m^3/kmol

Rbar = 8314.0                                                                    // universal gas constant in N.m/kmol.K
T = 513.0                                                                        // in kelvin
delpbydelT = (Rbar/(vbar-b) + a/(2*vbar*(vbar+b)*T**1.5)*10**5)/10**3             // in kj/(m^3*K)

// By The Maxwell relation
delsbydelv = delpbydelT
// Result
printf( ' The value of delpbydelT in kj/(m^3*K) is:   %.2f',delpbydelT);

// Part(b)
// A value for (dels/delv)T can be estimated using a graphical approach with steam table data, as follows: At 240C, Table A-4 provides the values for specific entropy s and specific volume v tabulated below
T = 240.0                                                                         // in degree celcius
// At p =1, 1.5, 3, 5, 7, 10 bar respectively
y = [7.994, 7.805, 7.477, 7.230, 7.064, 6.882]                  
x = [2.359, 1.570, 0.781, 0.4646, 0.3292, 0.2275]               
plot(x,y)
xlabel("Specific volume")
ylabel("Specific entropy")

// The pressure at the desired state is 5 bar.The corresponding slope is
delsbydelv = 1                                                                    // in kj/m^3.K
printf( ' From the data of the table,delsbydelv = %.2f',delsbydelv);
