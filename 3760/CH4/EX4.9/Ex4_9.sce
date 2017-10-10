clc;
A=2;//No of parallel paths for armature conductors
P=6;//No. of poles
If=2;//Field current
Il=148;//Line current
Ia=If+Il;//Armature current
Z=480;//No of conductors
//brushes on GNA, theta=0
ATd1=0//demagnetizing ampere turns
ATc1=((Ia*Z)/(2*A*P))//Cross magnetizing ampere turns
printf('When brushes are on GNA the demagnetizing ampere turns & Cross magnetizing ampere turns are equal to %f & %f ATs/pole respectively.\n',ATd1,ATc1);
//brushes are shifted from GNA by 5 degrees electrical, theta=5
theta=5;
ATd2=((2*theta*Ia*Z)/(180*2*A*P))//demagnetizing ampere turns
ATc2=3000-ATd2;//Cross magnetizing ampere turns
printf('When the brushes are shifted from GNA by 5 degrees electrical the demagnetizing ampere turns & Cross magnetizing ampere turns are equal to %f & %f ATs/pole respectively.\n',ATd2,ATc2);
//brushes are shifted from GNA by 5 degrees mechanical, theta_m=5
theta_m=5;//mechanical angle
theta_e=(P/2)*theta_m;//electrical angle
ATd3=((2*theta_e*Ia*Z)/(180*2*A*P))//demagnetizing ampere turns
ATc3=3000-ATd3;//Cross magnetizing ampere turns
printf('When the brushes are shifted from GNA by 5 degrees mechnical the demagnetizing ampere turns & Cross magnetizing ampere turns are equal to %f & %f ATs/pole respectively',ATd3,ATc3);
