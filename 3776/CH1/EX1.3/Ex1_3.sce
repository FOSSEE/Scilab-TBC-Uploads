clear
//Given
//
d_pins = 0.375 //inch
load1 = 3      //kips
AB_x = 6      //inch,X-component
AB_y = 3      //inch,Y-component
BC_y = 6      //inch,Y-component
BC_x = 6      //inch,X-component
area_AB = 0.25*0.5                //inch*2
area_net = 0.20*2*(0.875-0.375) //inch*2
area_BC = 0.875*0.25              //inch*2
area_pin = d_pins*2*0.20           //inch*2
area_pin_crossection = 2*3.14*((d_pins/2)**2)
//calculations

slope = AB_y/ AB_x   //For AB
slope =  BC_y/ BC_x  //For BC

//momentum at point C:
F_A_x = (load1*AB_x )/(BC_y + AB_y ) //kips, F_A_x X-component of F_A

//momentum at point A:
F_C_x = -(load1*BC_x)/(BC_y + AB_y ) //kips, F_C_x X-component of F_c

//X,Y components of F_A
F_A= ((5**0.5)/2)*F_A_x  //kips
F_A_y = 0.5*F_A_x          //kips

//X,Y components of F_C
F_C= (2**0.5)*F_C_x    //kips
F_C_y = F_C_x            //kips

T_stress_AB = F_A/area_AB                 //ksi , Tensile stress in main bar AB
stress_clevis = F_A/area_net              //ksi ,Tensile stress in clevis of main bar AB
c_stress_BC = F_C/area_BC                 //ksi , Compressive stress in main bar BC
B_stress_pin = F_C/area_pin               //ksi , Bearing stress in pin at C
To_stress_pin =  F_C/area_pin_crossection //ksi , torsion stress in pin at C

printf("\n Tensile stress in main bar AB: %0.1f ksi",T_stress_AB)
printf("\n Tensile stress in clevis of main bar AB: %0.1f ksi",stress_clevis)
printf("\n Compressive stress in main bar BC: %0.1f ksi",-c_stress_BC)
printf("\n Bearing stress in pin at C: %0.2f ksi",-B_stress_pin)
printf("\n torsion stress in pin at C: %0.2f ksi",-To_stress_pin)
