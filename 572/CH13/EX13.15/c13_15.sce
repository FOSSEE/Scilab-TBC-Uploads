//(13.15)  Devise and evaluate an exergetic efficiency for the internal combustion engine of Example 13.4. For the fuel, use the chemical exergy value determined in Example 13.12(a).


//solution

mFdot = 1.8e-3                                                                  //fuel mass flow rate in kg/s
ech = 47346                                                                     //in kj/kg, from example 13.12(a)
Wcvdot = 37                                                                     //power developed by the engine in kw

Efdot = mFdot*ech                                                               //rate at which exergy enters with the fuel in kw

epsilon = Wcvdot/Efdot                                                          //exergetic efficiency
printf('the exergetic efficiency is:  %f',epsilon)