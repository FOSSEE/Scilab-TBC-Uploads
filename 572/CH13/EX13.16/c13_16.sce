//(13.16)   For the reactor of Example 13.9, determine the exergy destruction, in kJ per kmol of fuel, and devise and evaluate an exergetic efficiency. Consider (a) complete combustion with the theoretical amount of air (b) complete combustion with 400% theoretical air. For the fuel, use the chemical exergy value determined in Example 13.12(a).


//solution

Tnot = 298                                                                      //in kelvin

//For the case of complete combustion with the theoretical amount of air
sigmadot = 5404                                                                 //rate of entropy production from example 13.9, in kj/kmol.K
Eddot = Tnot*sigmadot                                                           //in kj/kmol
Efdot = 5407843                                                                 //rate at which exergy enters with the fuel from example 13.12, in kj/kmol
epsilon = 1-Eddot/Efdot
printf('the exergetic efficiency with theoretical amount of air is:  %f',epsilon)

//for the case of combustion with 400% theoretical air
sigmadot = 9754                                                                 //rate of entropy production from example 13.9, in kj/kmol.K
Eddot = Tnot*sigmadot                                                           ////in kj/kmol
epsilon = 1-Eddot/Efdot
printf('\nthe exergetic efficiency with 400 percent theoretical amount of air is:  %f',epsilon)