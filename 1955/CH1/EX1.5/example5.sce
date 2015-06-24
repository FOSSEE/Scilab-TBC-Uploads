clc
clear
//input data
N=4//Number of stages in turbine handling
P=0.4//Stagnation presure ratio between exit and inlet of each stage
ns1=0.86//Stage efficiency of first and second stages
ns2=0.84//Stage efficiency of third and fourth stages
r=1.4//ratio of specific heats for air

//calculations
u=1-(P)^((r-1)/r)//constant
T03=(1-(u*ns1))^2//Temperature after the end of first two stages in (K*Cp*T01) where Cp is specific at heat at constant pressure in kJ/kg.K and T01 is initial temperature at entry of stage 1 in K
W12=u*(1+(1-(u*ns1)))*ns1//Actual work output from first two stages in (kW*Cp*T01)
W34=T03*u*(1+(1-(u*ns2)))*ns2//Actual work output from last two stages in (kW*Cp*T01)
W=(W12+W34)//Total actual work output from turbine in (kW*Cp*T01)
Ws=1-(1-u)^N//Total isentropic work due to single stage compressor in (kW*Cp*T01)
n=(W/Ws)//Overall turbine efficiency

//output
printf('the overall efficiency of the turbine is %3.3f',n)

