clc,clear
printf('Example 6.8\n\n')

P_out=1500*10^3
V_L=11000
phi=acos(0.8)
I_L=P_out/(sqrt(3)*V_L*cos(phi))

I_L_actv=I_L*cos(phi)   //wattful or active component of current
I_L_reactive=I_L*sin(phi) //wattless or reactive component of current

I_each=I_L/2  //in identical conditions
I_arm1=45 //given
I_1_reactive=sqrt(I_arm1^2-39.364^2 )  //from the power triangle 
I_2_reactive=59.046-21.80
I_a_2=sqrt( 39.364^2 + I_2_reactive^2 )  //required armature current of 2nd alternator
printf('Required armature current of second alternator is %.4f A\n',I_a_2)
//power factors of 2 machines
cos_phi1=39.364/45 
cos_phi2=39.364/54.1921

printf('Power factors are %.4f lagging and %.4f lagging',cos_phi1,cos_phi2)
