clc,clear
printf('Example 1.22\n\n')

Z=496 //no of conductors
P=4 //poles
slots=31
coilsides_per_slot=4
coilsides=slots*coilsides_per_slot
coils=coilsides/2
turns=Z/2
turns_per_coil=turns/coils

y_c=[(Z-2)/P (Z+2)/P] //commutator pitch
coils_active=(Z/(2*P))-1 // because y_c didnt turn out to be integer, 1 coil was made inactive/dummy
segments=coils_active  //no of commutative segments
Y_A=[ (segments+1)/(P/2) (segments-1)/(P/2)   ]
Y_A=Y_A(1)   //Y_A(2) is discarded because of progressive wave winding
y_f=29,y_b=33  //front and back pitch ; note that Y_A=(y_b+y_f)/2
resultant_pitch=2*Y_A  //because Y_A=(y_b+y_f)/2 and resultant pitch = y_b+ y_f

printf('\n(i)   Total number of coils = %.0f',coils)
printf('\n(ii)  Turns per coils = %.0f',turns_per_coil)
printf('\n(iii) Commutator pitch = %.0f',(y_c(1)+y_c(2))/2)
printf('\n(iv)  Back pitch= %.0f    front pitch= %.0f   total pitch= %.0f',y_b,y_f,resultant_pitch)
printf('\n(v)   No of commutator segments = %.0f',segments)
