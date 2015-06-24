// Given:-
T1 = 300.00                                 //temperature in state 1 in kelvin
P1 = 1.00                                   //pressure in state 1 in bar
P2 = 2.00                                   //pressure in state 2 in bar
R = 287.00                                  //gas constant of air in SI units

// Calculations
v1 = (R*T1)/(P1*10**5)                    //specific volume in state 1
P = linspace(1,2,50)
for i = 1:50
    v(i) = v1
end
 

T2 = (P2*10**5*v1)/R
v3 = (R*T2)/(P1*10**5)
vv = linspace(v1,v3,50)
for i = 1:50
    Pa(i) = P1
end

//function[out]= f(inp)
//out = (R*T2)/(inp

VV = linspace(v1,v3,50)
for j = 1:50
    pp(j) = (R*T2)/VV(j)/(10**5)
end
vcommon = cat(1,v,VV')
pcommon = [P  pp']
size(vcommon)
size(pcommon)
//subplot(211)
plot(vcommon,pcommon)
xlabel('v')
ylabel('p(bar)')

//subplot(212)
plot(vv,Pa)
xlabel('v')
ylabel('p(bar)')

//The two steps are shown in one graph and the other on is shown in the other graph"""

printf( 'The temperature in kelvin in state 2 is T2 = %f',T2)
printf( 'The specific volume in state 3 in m^3/kg is  v = %f',v3)
