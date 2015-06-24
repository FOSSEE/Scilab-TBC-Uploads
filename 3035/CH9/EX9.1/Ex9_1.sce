// Variable Declaration
Y_s12 = complex(2.96,-20.16)     //Line admittance b/w buses 1 & 2(*10^-3 mho)
Y_p12 = complex(0,0.152)         //Line admittance b/w buses 1 & 2(*10^-3 mho)
Y_s15 = complex(2.72,-18.32)     //Line admittance b/w buses 1 & 5(*10^-3 mho)
Y_p15 = complex(0,0.185)         //Line admittance b/w buses 1 & 5(*10^-3 mho)
Y_s23 = complex(3.0,-22.8)       //Line admittance b/w buses 2 & 3(*10^-3 mho)
Y_p23 = complex(0,0.110)         //Line admittance b/w buses 2 & 3(*10^-3 mho)
Y_s25 = complex(1.48,-10.30)     //Line admittance b/w buses 2 & 5(*10^-3 mho)
Y_p25 = complex(0,0.312)         //Line admittance b/w buses 2 & 5(*10^-3 mho)
Y_s34 = complex(2.96,-20.16)     //Line admittance b/w buses 3 & 4(*10^-3 mho)
Y_p34 = complex(0,0.152)         //Line admittance b/w buses 3 & 4(*10^-3 mho)
Y_s45 = complex(3.0,-22.8)       //Line admittance b/w buses 4 & 5(*10^-3 mho)
Y_p45 = complex(0,0.110)         //Line admittance b/w buses 4 & 5(*10^-3 mho)


// Calculation Section
Y_s13 = complex(0,0)             //Line admittance b/w buses 1 & 3(*10^-3 mho)
Y_p13 = complex(0,0)             //Line admittance b/w buses 1 & 3(*10^-3 mho)
Y_s14 = complex(0,0)             //Line admittance b/w buses 1 & 4(*10^-3 mho)
Y_p14 = complex(0,0)             //Line admittance b/w buses 1 & 4(*10^-3 mho)
Y_11 = (Y_s12+Y_s13+Y_s14+Y_s15)+(Y_p12+Y_p13+Y_p14+Y_p15)
Y_12 = -Y_s12
Y_13 = -Y_s13
Y_14 = -Y_s14
Y_15 = -Y_s15

Y_s21 = Y_s12
Y_p21 = Y_p12
Y_s24 = complex(0,0)             //Line admittance b/w buses 2 & 4(*10^-3 mho)
Y_p24 = complex(0,0)             //Line admittance b/w buses 2 & 4(*10^-3 mho)
Y_21 = Y_12
Y_22 = (Y_s21+Y_s23+Y_s24+Y_s25)+(Y_p21+Y_p23+Y_p24+Y_p25)
Y_23 = -Y_s23
Y_24 = -Y_s24
Y_25 = -Y_s25

Y_s31 = Y_s13
Y_p31 = Y_p13
Y_s32 = Y_s23
Y_p32 = Y_p23
Y_s35 = complex(0,0)             //Line admittance b/w buses 2 & 4(*10^-3 mho)
Y_p35 = complex(0,0)             //Line admittance b/w buses 2 & 4(*10^-3 mho)
Y_33 = (Y_s31+Y_s32+Y_s34+Y_s35)+(Y_p31+Y_p32+Y_p34+Y_p35)
Y_34 = -Y_s34
Y_35 = -Y_s35
Y_31 = Y_13
Y_32 = Y_23
Y_33 = (Y_s31+Y_s32+Y_s34+Y_s35)+(Y_p31+Y_p32+Y_p34+Y_p35)
Y_34 = -Y_s34
Y_35 = -Y_s35

Y_s41 = Y_s14
Y_p41 = Y_p14
Y_s42 = Y_s24
Y_p42 = Y_p24
Y_s43 = Y_s34
Y_p43 = Y_p34
Y_41 = Y_14
Y_42 = Y_24
Y_43 = Y_34
Y_44 = (Y_s41+Y_s42+Y_s43+Y_s45)+(Y_p41+Y_p42+Y_p43+Y_p45)
Y_45 = -Y_s45

Y_s51 = Y_s15
Y_p51 = Y_p15
Y_s52 = Y_s25
Y_p52 = Y_p25
Y_s53 = Y_s35
Y_p53 = Y_p35
Y_s54 = Y_s45
Y_p54 = Y_p45
Y_51 = Y_15
Y_52 = Y_25
Y_53 = Y_35
Y_54 = Y_45
Y_55 = (Y_s51+Y_s52+Y_s53+Y_s54)+(Y_p51+Y_p52+Y_p53+Y_p54)

Y_bus = [[Y_11, Y_12, Y_13, Y_14, Y_15],
         [Y_21, Y_22, Y_23, Y_24, Y_25],
         [Y_31, Y_32, Y_33, Y_34, Y_35],
         [Y_41, Y_42, Y_43, Y_44, Y_45],
         [Y_51, Y_52, Y_53, Y_54, Y_55]]

// Result Section
printf('The Y bus matrix for the five-bus system is :\n')
disp(Y_bus)
