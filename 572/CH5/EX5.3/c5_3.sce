//(5.3)   A dwelling requires 5 * 10^5 kJ per day to maintain its temperature at 22C when the outside temperature is 10C. (a) If an electric heat pump is used to supply this energy, determine the minimum theoretical work input for one day of operation, in kJ.


//solution

//variable initialization
Tc = 283                      //in kelvin
TH = 295                      //in kelvin
QH = 5*10^5                   //in kj per day

Wcyclemin = (1-Tc/TH)*QH
printf('minimum theoretical work input for one day of operation in kj is:\n\tWmin = %e',Wcyclemin)