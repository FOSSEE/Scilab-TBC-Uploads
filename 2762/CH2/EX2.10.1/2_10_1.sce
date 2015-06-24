//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.10-1
//Principles of Momentum Transfer and Overall Balances
//given data
h=0.0655;//pressure drop reading in m
rhow=996;//density of water in kg/m3
g=9.80665;//gravity force
dP=h*rhow*g;//pressure drop
//dP=(32*mu*v*(l2-l1/(D*D))) this implies---> v= dP*(D*D)/(32*mu*(l2-l1)
D=2.22/1000;//capillary internal diameter
mu=1.13/1000;//viscosity of liquid
dl=0.317;//l2-l1= length of capillary being used in m
v= dP*(D*D)/(32*mu*dl);//velocity in m/s
V=(v*3.14*D*D)/4;//volumetric flow rate D=2.22/1000;//capillary internal diameter
mu=1.13/1000;//viscosity of liquid
rhol=875;//density of liquid in kg/m3
Re=(D*v*rhol)/mu;
if(Re<2100) then
    disp("the flow is laminar")
else
    disp("the flow is turbulent")
end
mprintf("volumetric flow rate= %f m3/s",V)
//end
