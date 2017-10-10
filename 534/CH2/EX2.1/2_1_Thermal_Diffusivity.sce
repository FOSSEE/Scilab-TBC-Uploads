clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 2.1   Page 68 \n')//Example 2.1
// Find Value for Thermal Diffusivity

function a=alpha(p, Cp, k)
    a=k/(p*Cp); //[m^2/s]
    funcprot(0);
endfunction

//(a) Pure Aluminium at 300K
// From Appendix A, Table A.1

p = 2702;  //[Kg/m^3] - Density Of Material 
Cp = 903; //[J/kg.K] - Specific heat of Material
k = 237;    //[W/m.k] - Thermal Conductivity of Material

printf("\n (a) Thermal Diffuisivity of Pure Aluminium at 300K = %.2e m^2/s\n",alpha(p, Cp, k));

//(b) Pure Aluminium at 700K
// From Appendix A, Table A.1

p = 2702;  //[Kg/m^3] - Density Of Material 
Cp = 1090; //[J/kg.K] - Specific heat of Material
k = 225;    //[W/m.k] - Thermal Conductivity of Material

printf("\n (b) Thermal Diffuisivity of Pure Aluminium at 700K = %.2e m^2/s\n",alpha(p, Cp, k));

//(c) Silicon Carbide at 1000K
// From Appendix A, Table A.2

p = 3160;  //[Kg/m^3] - Density Of Material 
Cp = 1195; //[J/kg.K] - Specific heat of Material
k = 87;    //[W/m.k] - Thermal Conductivity of Material

printf("\n (c) Thermal Diffuisivity of Silicon Carbide at 1000K = %.2e m^2/s\n",alpha(p, Cp, k));

//(d) Paraffin at 300K
// From Appendix A, Table A.3

p = 900;  //[Kg/m^3] - Density Of Material 
Cp = 2890; //[J/kg.K] - Specific heat of Material
k = .24;    //[W/m.k] - Thermal Conductivity of Material

printf("\n (d) Thermal Diffuisivity of Paraffin at 300K = %.2e m^2/s",alpha(p, Cp, k));
//END
