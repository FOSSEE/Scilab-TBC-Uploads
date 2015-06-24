//Variable declaration:
Lf = 6/12                           //Length of firebrick (ft)
kf = 0.61                           //Thermal conductivity of firebrick (Btu/h.ft. F)
A = 480                             //Surface area of wall (ft^2)
Lw = 8/12                           //Length of rock wool (ft)
kw = 0.023                          //Thermal conductivity of rock wool (Btu/h.ft. F)
T1 = 1900                           //Temperature of insulation of firebrick ( F)
T2 = 140                            //Temperature of insulation of rock wool ( F)

//Calculation:
Rf = Lf/(kf*A)                      //Resistance of firebrick (h. F/Btu)
Rw = Lw/(kw*A)                      //Resistance of rock wool (h. F/Btu)
R = Rf+Rw                           //Total resitance (h. F/Btu)
Q = (T1-T2)/R                       //Heat loss through the wall (Btu/h)

//Result:
printf("The heat loss through the wall is : %.0f Btu/h .",Q)
