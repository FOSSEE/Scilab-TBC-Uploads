//Variable declaration:
Di = 0.902/12.0                     //Inside diameter of tube (ft)
Do = 1.0/12.0                       //Outside diameter of tube (ft)
k = 60.0                            //Thermal conductivity of tube (Btu/h.ft^2..)                         

//Calculation:
//From example 15.19:
a = 0.00126
Dr = (Do - Di)/2.0                  //Radial thickness of tube wall  (ft)
Rw = Dr/k                           //Resistance of wall (Btu/h..)
ho = 1.0/(a-Rw)                     //The revised ho (Btu/h.ft^2..)

//Result:
printf("The revised ho is : %.0f Btu/h.ft^2.. .",ho)
