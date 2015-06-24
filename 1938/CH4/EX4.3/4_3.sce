clc,clear
printf('Example 4.3\n\n')

Slots=36
Pole=4
Phase=3 //number of phases
n=Slots/Pole    //Slots per pole
beeta=180/n     //Slot angle in degrees

//coil is shorted by 1 slot i.e. by beeta degrees to full pitch distance
alpha=beeta     //angle of short pitch
K_c=cosd(alpha/2)  //Coil span Factor
printf('Coil Span Factor:\nK_c=%.4f',K_c)
