//(3.7) One pound of air undergoes a thermodynamic cycle consisting of three processes.Process 1–2: constant specific volume Process 2–3: constant-temperature expansion Process 3–1: constant-pressure compression. At state 1, the temperature is 300K, and the pressure is 1 bar. At state 2, the pressure is 2 bars. Employing the ideal gas equation of state, (a) sketch the cycle on p–v coordinates. (b) determine the temperature at state 2, in K; (c) determine the specific volume at state 3, in m3/kg.

//solution

//variable initialization
T1 = 300                                 //temperature in state 1 in kelvin
P1 = 1                                   //pressure in state 1 in bar
P2 = 2                                   //pressure in state 2 in bar

R = 287                                  //gas constant of air in SI units
v1 = (R*T1)/(P1*10^5)                           //specific volume in state 1
P = linspace(1,2,100)
for i = 1:100
    v(1,i) = v1
end

plot2d(v,P,rect=[0,0,5,2.5]);

T2 = (P2*10^5*v1)/R
v3 = (R*T2)/(P1*10^5)
vv = linspace(v1,v3,100)
plot(vv,P1)

function[out]= f(inp)
    out = (R*T2)/inp
endfunction

VV = linspace(v1,v3,100)
for j = 1:100
    pp(1,j) = f(VV(1,j))/(10^5)
end
plot2d(VV,pp)
xtitle("","v","p(bar)")

printf('the temperature in kelvin in state 2 is:\n\t T2 = %f',T2)
printf('\n\nthe specific volume in state 3 in m^3/kg is \n\t v = %f',v3)






  
    
    
    
    
    
    
     