clc,clear
printf('Example 1.6\n\n')

Pole=10
Z=800 //No of armature conductors
A=Pole //For lap wound
ratio=0.7  //ratio of pole arc to pole pitch
//amp_turns_PP=ratio*(I_a*Z)/(2*A*P)
turns_PP=ratio*(Z)/(2*A*Pole)   //turns per pole
conductors_PP=turns_PP*2 //multiplied with 2 because 2 conductors form 1 turn

printf('Compensating conductors per pole= %.0f',ceil(conductors_PP))
