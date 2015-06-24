clc
// given data
delG=-39.59 // kJ/mol
delH=-56.83 // change in enthalpy in kJ/mol
mdotmethanol=32.0 // in g/s
mdotoxygen=48.0 // in g/s

Wmax=166.3 // -delG in kJ

flowmethanol=mdotmethanol*100*3600/(Wmax*1000) // in kg/h
flowoxygen=mdotoxygen*100*3600/(Wmax*1000) // in kg/h
printf( "The required flow rate of methanol is %.2f kg/h",flowmethanol)
printf( "\nThe required flow rate of oxygen is %.2f kg/h",flowoxygen)
delQ=delH-delG // using eq 12.7 

fuelrate=-delQ*19.24/mdotmethanol // in kcal/s

printf( "\nThe required heat removal rate is %.2f kcal/s",fuelrate)

// The answer is wrong in textbook because of incorrect conversion from g/s to kg/h
