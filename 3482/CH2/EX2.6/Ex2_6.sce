clc;
//page 39
alpha=atan(7/4);//rad
beta=atan(1.5/4);//rad
T_AB=200;//N tension in cable AB
T_AE=-300;//N, tension in cable AE
// R= T_AB+T_AC+T_AE+F_D=0        ...Equillibrium Condition...........1


T_ABx=-T_AB*sin(alpha);// Xcomponent of T_AB
T_ABy=T_AB*cos(alpha);//Y component of T_AB

// T_ACx=T_AC*sin(beta); Xcomponent of T_AC
// T_ACy=T_AC*cos(beta); Y component of T_AC

// Sum Fx =0 gives -T_AB*sin(alpha) N + T_AC*sin(beta) +F_D=0..........2
//Sum Fy=0 gives T_AB*cos(alpha) N +T_AC*cos(beta) +T_AE =0................3

T_AC=(-T_AB*cos(alpha)-T_AE)/cos(beta);//N, From 3

F_D=T_AB*sin(alpha)-T_AC*sin(beta);//N, From 2

printf("Value of drag force is F_D=%.2f N and tension in cable AC is T_AC= %.2f N",F_D,T_AC);
