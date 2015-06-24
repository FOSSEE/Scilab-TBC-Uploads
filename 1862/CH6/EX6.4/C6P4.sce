
clear
 clc
//to find final velocity of man when seated in rowboat

// GIVEN::
//we consider +ve x direction as man's original velocity
//refer to figure 6-12 on page no. 126
//mass of man
mm = 65//in kg
//speed of man initially in x direction
vmx = 4.9//in m/s
//mass of rowboat
mb = 88//in kg 
//speed of rowboat in x direction
vbx = 1.2//in m/s 

// SOLUTION:

//refer to figure 6-12(a) and 6-12(b) on page no. 126


//before man jumps
//momentum of man in x direction
pmx = mm*vmx//in kgm/s
//momentum of boat in x direction
pbx = mb*vbx//in kgm/s
//total initial momentum in x direction
pix = pmx + pbx//in kgm/s

//after man jumps
//combined final momentum of man and boat in x direction
//applying conservation of momentum for boat and man
//final velocity of man when seated in rowboat in x direction
vfx = (pix/(mm + mb))//in m/s
printf ("\n\n Total initial momentum in x direction pix = \n\n %.3i Kg.m/s",pix);
printf ("\n\n Final velocity of man when seated in rowboat in x direction vfx = \n\n %.1f m/s",vfx);
