//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.10-2
//Principles of Momentum Transfer and Overall Balances
//given data
D=2.22/1000;//capillary internal diameter
mu=1.13/1000;//viscosity of liquid
D=2.22/1000;//capillary internal diameter
rhol=875;//density of liquid in kg/m3
dl=0.317;//l2-l1= length of capillary being used in m
v=0.275;//velcity of liq in m/s
Re=(D*v*rhol)/mu;//reynolds number
if(Re<2100) then
    disp("the flow is laminar")
    f=16/Re;//fannings friction factor
else
    disp("the flow is turbulent")
end
dP=(4*f*rhol*dl*v*v)/(2*D);//pressure drop in Pa (Hagen Poiseulle equation)
mprintf("pressure drop= %f Pa",dP)
//end
