clc
clear 
printf("example 3.29 page number 117\n\n")

//to find the rate of crystal formation, cooling water rate, required area

F = 1000;    //in kg
V = 0.05*F;   //in kg
xF = 0.48;
xL = 75/(100+75);
xC = 1;
C = (F*xF-950*xL)/(1-0.429);
printf ("rate of crystal formation = %f kg",C)

L = F-C-V;

//cooling water
W = (F*2.97*(85-35)+126.9*75.2-V*2414)/(4.19*11);
printf("\n\nrate of cooling water = %f kg",W)

delta_T1 = 56;
delta_T2 = 17;
delta_Tm = (delta_T1-delta_T2)/(log(delta_T1/delta_T2))
U = 125;

A=(F*2.97*(85-35)+126.9*75.2-V*2414)/(U*delta_Tm*3.6);
printf("\n\narea = %f square meter",A)
