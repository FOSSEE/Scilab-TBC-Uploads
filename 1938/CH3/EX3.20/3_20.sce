clc,clear
printf('Example 3.20\n\n')

V=225,I=10
dN=1030 - 970 //given
t_1=40  //time with no excitation
t_2=9// time with full excitation and armature supporting an extra load of 10 A at 219 V
t_3=20 //time with full exciation

W_dash = V*I //additional loss
W_s= W_dash *(t_2/(t_3-t_2)) //total stray losses
N=1000//Speed in rpm
//Using W_s = (2*pi/60)^2 * I *N *dN / t_3 where W_s is stray losses
I= W_s*(t_3/dN)*(30/%pi)^2/N   //moment of inertia
W_m=W_s*(t_3/t_1)   //mechanical losses
iron_losses=W_s - W_m

printf('(i)The moment of inertia of armature is %.2f kg-m^2\n',I)
printf('(ii)Iron loss= %.2f W\n',iron_losses)
printf('(iii)Mechanical losses at 1000 rpm mean speed is %.2f W',W_m)

printf('\n\nNoteworthy points:\n(1)When there is no excitation and armature is slowed down , its K.E. is used to overcome mechanical mechanical losses only since there will be no iron loss as there is no flux.\n(2)When there is excitation provided then K.E. is used to supply mechanical as well as iron losses together called stray losses ')
