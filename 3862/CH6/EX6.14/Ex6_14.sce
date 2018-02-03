clear
D=40.0  //Screw diameter
l=20.0   //Screw lwngth
p=l/3.0  //Lead of the screw
W=40000.0              //effort
R = 400  //Lever length
u = 0.12    //coefficient of friction between screw and nut
P = (D/(2*R))*W*((u+(p/(3.14*D)))/(1-u*(p/(3.14*D))))   //Effort
printf("\n Effort is %0.3f  N",P)
