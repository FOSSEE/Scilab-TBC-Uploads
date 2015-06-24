
clear;
clc;

printf("\t Example 10.9\n");
T1=250 ;         //temp.of surrounding,K   
l1=1;        //width of strips, m
l2=2.4;        //distance between strips,m
F12=0.2;    //view factor of 1 occupied by 2.

A=[1 -0.14;-1 10] ;   //matrix representation for solving the linear equations, for black surroundings
B=[559.6;3182.5];        //matrix representation for solving the linear equations.

X=inv(A)*B;
A=[1 -0.14;-1 10];    //matrix representation for solving the linear equations, for black surroundings
B=[559.6;3182.5];        //matrix representation for solving the linear equations.

X=inv(A)*B;

Qn12=(X(1)-X(2))/(1/(0.9975*F12));        //net heat flow from 1 to 2 for  black surroundings.
//since each strip loses heat to the surrounding,Qnet1, Qnet2 and Qnet1-2 are different.
// three equations will be   
//(1451-B1)/2.33 = (B1-B2)/(1/0.2)+(B1-B3)/(1/0.8)......(1)
//(459.B2) = (B2-B1)/(1/0.2)+(B2-B3)/(1/0.8)............(2)
//0=(B3-B1)/(1/0.8)+(B3-B2)/(1/0.8).....................(3)
//solving these equations, we get  the values of B1,B2 and B3.
B1=987.7        //heat flux by surface 1.
B2=657.4        //heat flux by surface 2.
B3=822.6        //heat flux by surface 3.
qn12=(B1-B2)/(1/F12)+(B1-B3)/(1/(1-F12));        // net heat transfer between 1 and 2 if they are connected by an insulated diffuse reflector between the edges on both sides.

printf("net heat transfer between 1 and 2 if the surroundings are black is :%.2f W/m^2\n",Qn12);

printf("net heat transfer between 1 and 2 if they are connected by an insulated diffuse reflector between the edges on both sides is : %.0f W/m^2\n",qn12);

x=poly([0],'x');
 x=roots(5.67*10^-8*(x^4)-822.6);
 printf("\t temperature of the reflector is : %.0f K\n",x(4));
//end

