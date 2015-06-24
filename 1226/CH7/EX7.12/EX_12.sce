clc;funcprot(0)//EXAMPLE 7.12

//Initializing the variables
Z=0.55;.............//Mach Index
Dcy=0.11;............//Engine Bore in m
L = 0.14;............//stroke length in m
N = 2400;.............//Engine rpm
N1 = 2800;............//Engine rpm after modification
N2=4800;.............//Max rpm for unmodified engine
p = 0.88;.........//pressure at intake valve in bar
t=340;...............//temperature at intake valve in Kelvin
ki = 0.33;...........//Inlet flow co-efficient
ga = 1.4;...............//degree of freedom of the gas
R = 287;.................//Gas constant for air in J/kg.K
//calculations

Us = sqrt(ga*R*t);......//sonic velocity of air-fuel mixture at the inlet valve
Up = (2*L*N)/60;...........//piston speed
Div = sqrt(((Dcy^2)*Up)/(Z*ki*Us));...............//Nominal diameter of the inlet valve in m
disp(Div,"(i)Nominal diameter of the inlet valve is (m):")
disp(Div*1000,"(mm)=")
Div1 = sqrt(((Dcy^2)*2*L*N1)/(Z*ki*Us*60));.......// Nominal diameter of inlet valve for the modified engine in m
disp(Div1,"(ii)When the engine is modified to develop max indicative power at 2800rpm, nominal diameter of the inlet valve is (m):")
disp(Div1*1000,"(mm)=")
Up1=(2*L*N1)/60;............//New piston speed for modified engine
Z1 = ((Dcy/Div)^2)*(Up1/(ki*Us));
disp(Z1,"(iii)The new mach index value is :")
disp("Hence the volumetric efficiency drops (There is a steady decrease in volumetric efficiency of an engine if there is an increase in the mach index beyond 0.55, Refer the FIG 7_12)")
Up2 = (2*L*N2)/60;..............//Piston speed at max rpm for unmodified engine
Z2 = ((Dcy/Div)^2)*(Up2/(ki*Us));
disp(Z2,"(iv)The mach index for the unmodified engine is :")
disp("The volumetric efficiency is approximately 56% (from the FIG 7_12)")
