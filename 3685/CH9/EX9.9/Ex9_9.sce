clc
h2 = 2716.2 // Enthalpy at turbine inlet in kJ/kg
hf = 844.89 // Enthalpy of fluid in kJ/kg
hfg = 1947.3 // Latent heat of vaporization in kJ/kg
h3 = 2685.5 // Enthalpy at turbine exit in kJ/kg
printf("\n Example 9.9")
x1 = (h2-hf)/hfg
x4 = (h3-hf)/hfg
printf("\n The quality of steam in pipe line is %f ",x1) //The answers vary due to round off error
printf("\n Maximum moisture content that can be determined is %f percent",100-(x4*100))//The answer provided in the textbook is wrong

