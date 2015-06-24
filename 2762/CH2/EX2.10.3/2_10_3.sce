//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.10-3
//Principles of Momentum Transfer and Overall Balances
//given data
D=0.0525;//diameter of the pipe in m
v=4.57;//vel of fluid in m/s
rhol=801;//density of fluid in kg/m3
mu=4.46/1000;//viscosity in kg/m.s
Re=(D*v*rhol)/mu;//reynolds number
E=4.6*(10^-5)
if(Re<2100) then
    disp("the flow is laminar")
    f=16/Re;//fannings friction factor
else
    disp("the flow is turbulent")
    k=E/D;
end
dl=36.6;//l2-l1= length of pipe being used in m
f=0.0060;//for given Re
Ff=(4*f*dl*v*v)/(2*D);//mechanical energy friction loss
mprintf("mechanical energy friction loss= %f J/kg",Ff)
//end
