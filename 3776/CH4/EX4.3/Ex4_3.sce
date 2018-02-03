clear
//Given
dia_out = 20      //mm- outer diameter of shaft
dia_in  = 16      //mm- inner diameter of shaft
c_out = dia_out/2 //mm - outer Radius of shaft
c_in  = dia_in/2  //mm - inner radius of shaft
T = 40            //N/mm -Torque in the shaft
//calculations

J = 3.14*((dia_out**4)- (dia_in**4))/32 //mm4
shear_T_max = T*c_out*(10**3)/J       // The maximum torsion shear in the shaft
shear_T_min = T*c_in*(10**3)/J        // The maximum torsion shear in the shaft
printf("\n The maximum shear due to torsion is  %e MPa",shear_T_max)
 //answer in textbook is wrong
printf("\n The minimum shear due to torsion is  %0.0f MPa",shear_T_min)
