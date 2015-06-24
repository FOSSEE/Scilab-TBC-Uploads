//Chapter-2, Example 2.5, Page 92
//=============================================================================
clc;
clear;
//INPUT DATA
r=0.01;//radius in m
lg=10^-3;//length of air gap in m
Rm=(30/2)*10^-2;//mean radius in m
ur=800;//relative permeability of iron
ur2=1;//relative permeability of air gap
N=250;//no of turns
phi=20000*10^-8;//flux in Wb
u0=4*%pi*10^-7;//permeability in free space 
a=%pi*(r)^2;//area of cross-section in m
leakage_factor=1.1
//CALCULATIONS 
Reluctance_of_air_gap=(lg/(u0*ur2*a));//reluctance of air gap in A/wb
li=(%pi*(2*r)-(lg));//length of iron path in m
Reluctance_of_iron_path=((%pi*0.3)-(lg))/(4*%pi*10^-7*800*a);//in A/wb
total_reluctance=Reluctance_of_air_gap+Reluctance_of_iron_path;//in A/wb
MMF=phi*total_reluctance;//in Ampere turns
current_required=(MMF)/(N);//in A
//OUTPUT
mprintf("Thus current required is %1.2f A \n",current_required);
 //Including leakage
 //CALCULATIONS
 MMF_of_airgap=phi*Reluctance_of_air_gap;//in A/wb
 Total_flux_in_ironpath=leakage_factor*phi;//in Wb
 MMF_of_ironpath=Total_flux_in_ironpath*Reluctance_of_iron_path;//in A
 Total_MMF=MMF_of_ironpath+MMF_of_airgap;//in A/wb
 current_required2=Total_MMF/(N);//in A
//OUTPUT
mprintf("Thus current required is %1.3f A",current_required2);
