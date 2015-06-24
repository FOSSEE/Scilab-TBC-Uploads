
clc
//initialisation of variables
h=44.10//Btu/lbm
hf=-51688 //Btu/lb mole
Hr=-948087 //Btu/lb mole
Hr1=-872347//Btu/lb mole
Hr2=-955099 //Btu/lb mole
Hr3=-879359//Btu/lb mole
//CALCULATIONS
hRp=Hr/h//Btu/lbm
hRp1=Hr1/h//Btu/lbm
hRp2=Hr2/h //btu/lbm
hRp3=Hr3/h //Btu/lbm
//RESULTS
printf('Liquid propane with liquid H2O=% f Btu/lbm',hRp)
printf('Liquid propane with gaseous H2O=% f Btu/lbm',hRp1)
printf('Gaseous propane with liquid H2o=% f Btu/lbm',hRp2)
printf('Gaseous propane with gaseous H2o=% f Btu/lbm',hRp3)
