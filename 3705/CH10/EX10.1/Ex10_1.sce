
clear//

//Variable Declaration
Le=7 //Effective length in m
P=450 //Applied axial Load in kN
FOS=3 //Factor of safety 
sigma_pl=200*10**6 //Stress allowable in Pa
E=200*10**9 //Youngs Modulus in Pa
end_cond=0.7 //End Condition factor to be multiplied

//Calculations
Pcr=P*FOS //Critical Load in kN
A=Pcr*sigma_pl**-1*10**9 //Area in mm^2

//Part 1
I1=10**15*(Pcr*Le**2)*(%pi**2*E)**-1 //Moment of Inertia Required in mm^4
//From table selecting appropriate Section W250x73

//Part 2
I2=10**15*(Pcr*end_cond**2*Le**2)*(%pi**2*E)**-1 //Moment of Inertia Required in mm^4
//From table selecting appropriate Section W200x52

//Lightest Section that meets these criterion is W250x58 section


//Result
printf("\n From the above computation we select W250x58 section")
