clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.2   Page 267 \n'); //Example 5.3
// Total Time t required for two step process

//Operating Conditions

ho = 40;          //[W/m^2.K] Heat Convection coefficient
hc = 10;          //[W/m^2.K] Heat Convection coefficient
k = 177;         //[W/m.K] Thermal Conductivity 
e = .8;        //Absorptivity
L = 3*10^-3/2;      //[m] Metre
Ti = 25+273;        //[K] Temp of Aluminium
Tsurro = 175+273;     //[K] Temp of duct wall heating
Tsurrc = 25+273;     //[K] Temp of duct wall
Tit = 37+273;     //[K] Temp at cooling
Tc = 150+273;        //[K] Temp critical

stfncnstt=5.67*10^(-8);   // [W/m^2.K^4] - Stefan Boltzmann Constant 
p = 2770;        //[kg/m^3] density of aluminium
c = 875;        //[J/kg.K] Specific Heat

//To assess the validity of the lumped capacitance approximation
Bih = ho*L/k;
Bic = hc*L/k;
printf("\n Lumped capacitance approximation is valid as Bih = %f and Bic = %f", Bih, Bic);

//Eqn 1.9
hro = e*stfncnstt*(Tc+Tsurro)*(Tc^2+Tsurro^2);
hrc = e*stfncnstt*(Tc+Tsurrc)*(Tc^2+Tsurrc^2);
printf("\n Since The values of hro = %.1f and hrc = %.1f are comparable to those of ho and hc, respectively radiation effects must be considered", hro,hrc);

// Integration of the differential equation
// dy/dt=-1/(p*c*L)*[ho*(y-Tsurro)+e*stfncnstt*(y^4 - Tsurro^4)] , y(0)=Ti, and finds the minimum time t such that y(t)=150 degC
deff("[ydot]=f1(t,y)","ydot=-1/(p*c*L)*[ho*(y-Tsurro)+e*stfncnstt*(y^4 - Tsurro^4)]");
deff("[z]=g1(t,y)","z=y-150-273");
y0=Ti;
[y,tc]=ode("root",y0,0,150+273,f1,1,g1);
te = tc(1) + 300;

//From equation 5.15 and solving the two step process using integration
function Tydot=f(t,T)
    Tydot=-1/(p*c*L)*[ho*(T-Tsurro)+e*stfncnstt*(T^4 - Tsurro^4)];
    funcprot(0)
endfunction
Ty0=Ti;
t0=0;
t=0:10:te;
Ty=ode("rk",Ty0,t0,t,f);

// solution of integration of the differential equation
// dy/dt=-1/(p*c*L)*[hc*(y-Tsurrc)+e*stfncnstt*(y^4 - Tsurrc^4)] , y(rd(1))=Ty(43), and finds the minimum time t such that y(t)=37 degC=Tit
deff("[Tdot]=f2(t,T)","Tdot=-1/(p*c*L)*[hc*(T-Tsurrc)+e*stfncnstt*(T^4 - Tsurrc^4)]");
for(tt=0:1:900)
    tq=ode(Ty(43),0,tt,f2);
    if(tq-Tit<=10^-2)
        break;
    end
end

function Ty2dot=f2(t,T)
    Ty2dot=-1/(p*c*L)*[hc*(T-Tsurrc)+e*stfncnstt*(T^4 - Tsurrc^4)];
    funcprot(0)
endfunction
Ty20=Ty(43);
t20=te;
t2=te:10:1200;
Ty2=ode("rk",Ty20,t20,t2,f2);
clf();
plot(t,Ty-273,t2,Ty2-273,[tc(1) tc(1)],[0 Tc-273],[te te],[0 Ty(43)-273],[tt+te tt+te],[0 tq-273]);
xtitle('Plot of the Two-Step Process','t (s)','T (degC)');
legend('Heating','Cooling','tc','te','tt');

printf('\n\n Total time for the two-step process is t = %i s with intermediate times of tc = %i s and te = %i s.',tt+te,tc(1),te);
//END