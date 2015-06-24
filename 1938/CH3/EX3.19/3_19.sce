clc,clear
printf('Example 3.19\n\n')

V=219,I=10
dN=1030 - 970 //given
t_1=36  //time with no excitation
t_2=9// time with full excitation and armature supporting an extra load of 10 A at 219 V
t_3=15 //time with full exciation
W_dash = V*I  //additioanl loss when armature is suddenly connected to loads
W_s= W_dash *(t_2/(t_3-t_2)) //total stray losses
N=1000  //speed in rpm
//Using W_s = (2*pi/60)^2 * I *N *dN / t_3 where W_s is stray losses
I= W_s*(t_3/dN)*(30/%pi)^2/N   //moment of inertia
W_m=W_s*(t_3/t_1) //mechanical losses
iron_losses= W_s - W_m

printf('(i)The moment of inertia of armature is %.2f kg-m^2\n',I)
printf('(ii)Iron loss= %.2f W\n',iron_losses)
printf('(iii)Mechanical losses at 1000 rpm mean speed is %.2f W',W_m)

printf('\n\nNoteworthy points:\n(1)When armature is slowing down and there is no excitation,then kinetic energy is used to overcome mechanical losses only.Iron losses are absent as excitation is absent\n(2)When excitation is given, kinetic energy is used to overcome both mechanical as well as iron losses.Total called stray losses.\n(3)If moment of inertia is in kg-m^2,then loss of energy is in watts')
