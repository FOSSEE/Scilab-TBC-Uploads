// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 6,Page 54
//Title:Volume using van der Waals equation
//================================================================================================================
clear 
clc

//INPUT
n=1;//number of moles occupied by n-octane vapour in mol
T=427.85;//temperature in K
P=0.215;//saturation pressure in MPa
a=3.789;//van der Waals constant in Pa(m^3/mol)^2
b=2.37*10^-4;//van der Waals constant in m^3/mol
R=8.314;//universal gas constant in (Pa m^3)/(mol K)

//CALCULATION
Vguess=(n*R*T)/(P*10^6);//taking the vguess as volume from ideal gas (in m^3/mol) for the iteration process in van der Waals equation
Vnew=(R*T)/((P*10^6)+(a/Vguess^2))+b;//getting the initial value of volume (in m^3/mol) using van der Waals equation to start the iteration process
tolerance=1e-6;//defining the tolerance limit for the convergence of the iteration process
while abs(Vguess-Vnew)>tolerance
    Vguess=Vnew;
    Vnew=(R*T)/((P*10^6)+(a/Vguess^2))+b;//the iteration process to solve the system of equation
end
V=Vnew;//The volume calculated using the van der Waals equation in m^3/mol
//OUTPUT
mprintf('\n The volume occupied by n-octane vapour obtained by van der Waals equation= %f m^3/mol\n',V);

//===============================================END OF PROGRAM===================================================
