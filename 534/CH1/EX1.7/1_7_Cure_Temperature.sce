clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 1.7   Page 30 \n')//Example 1.7
// (a) Cure Temperature for h = 15 W/m^2
// (b) Value of h for cure temp = 50 deg C

Tsurr = 30+273; //[K] - Temperature of surrounding
Tf = 20+273; //[K] - Temperature of Fluid Flow
e=.5; //  Emissivity of Surface
a = .8;    // Absorptivity of Surface
G = 2000;    //[W/m^2] - Irradiation falling on surface
h=15;    //[W/m^2.k] - Thermal Convectivity from plate to air
stfncnstt=5.67*10^(-8);    // [W/m^2.K^4] - Stefan Boltzmann Constant 
T=375;    //[K] Value initially assumed for trial-error approach
//Using Eq 1.3a & 1.7 and trial-and error approach of Newton Raphson 
while(1>0)
f=((a*G)-(h*(T-Tf)+e*stfncnstt*(T^4 - Tsurr^4)));
fd=(-h*T-4*e*stfncnstt*T^3);
Tn=T-f/fd;
if(((a*G)-(h*(Tn-Tf)+e*stfncnstt*(Tn^4 - Tsurr^4)))<=.01)
    break;
end;
T=Tn;
end

printf("\n (a) Cure Temperature of Plate = %i degC\n",T-273);
//solution (b)
Treq=50+273;
function[T]=Tvalue(h)
    T=240;
    while(1>0)
        f=((a*G)-(h*(T-Tf)+e*stfncnstt*(T^4 - Tsurr^4)));
        fd=(-h*T-4*e*stfncnstt*T^3);
        Tn=T-f/fd;
        if(((a*G)-(h*(Tn-Tf)+e*stfncnstt*(Tn^4 - Tsurr^4)))<=.01)
            break;
        end;
        T=Tn;
    end
    funcprot(0)
endfunction 

h = [2:.5:100];
Tm = [1:1:197];
for i=1:1:197;
    Tm(i)=Tvalue(h(i));
end

T=Treq;
hnew=((a*G)-(e*stfncnstt*(T^4 - Tsurr^4)))/(T-Tf);
clf()
xtitle("Graph Temp vs Convection Coeff", "h (W/m^2/K)", "T (degC)");
x=[0 hnew hnew];
y=[Treq-273 Treq-273 0];
plot(h,Tm-273,x,y);
legend("Plot","h at T = 50 degC");
printf("\n (b) Air flow must provide a convection of = %i W/m^2.K", hnew);
//END