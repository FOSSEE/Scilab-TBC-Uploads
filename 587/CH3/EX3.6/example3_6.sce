clear;
clc;

//Example3.6[Heat Loss through a Composite Wall]
//Given:-
//We consider a 1m deep and 0.25 m high portion of the wall since it is representative of the entire wall
//Assuming any cross-section of the wall normal to the x-direction to be isothermal
k_b=0.72;//thermal conductivity of bricks[W/m.K]
k_p=0.22;//thermal conductivity of plaster layers[W/m.K]
k_f=0.026;//thermal conductivity of foam layers[W/m.K]
T_in=20;//Indoor Temperature[dgeree Celcius]
T_out=-10;//Outdoor Temperature[dgeree Celcius]
h_in=10;//Inner heat transfer coefficient[W/m^2.K]
h_out=25;//Outer heat transfer coefficient[W/m^2.K]
L_f=0.03;//Thickness of foam layer[m]
L_p=0.02;//Thickness of plaster[m]
L_b=0.16;//Thickness of brick wall[m]
L_c=0.16;//Thickness of central plaster layer[m]
A1=(0.25*1);//[m^2]
A2=(0.015*1);//[m^2]
A3=(0.22*1);//[m^2]
//Resistances offered:-
R_in=1/(h_in*A1);//Resistance to conevction heat transfer from inner surface[degree Celcius/W]
R1=L_f/(k_f*A1);//Conduction Resistance offered by outer foam layer[degree Celcius/W]
R2=L_p/(k_p*A1);//Conduction Resistance offered by Outer side Plaster Wall[degree Celcius/W]
R6=R2;//Conduction Resistance offered by Inner side Plaster Wall[degree Celcius/W]
R3=L_c/(k_p*A2);//Conduction Resistance offered by one side central Plaster wall[degree Celcius/W]
R5=R3;//Conduction Resistance offered by other side central Plaster wall[degree Celcius/W]
R4=L_b/(k_b*A3);//Conduction Resistance offered by Brick Wall[degree Celcius/W]
R_out=1/(h_out*A1);//Convection Resistance from outer surface[degree Celcius/W]
//R_in,R1,R2,R6,R_out are connected in series
//R3,R4,R5 are connected in parallel
R_mid=1/((1/R3)+(1/R4)+(1/R5));//Effective Parrallel Resistance
R_total=(R_in+R1+R2+R_mid+R6+R_out);//[degree Celcius/W]
disp("degree Celcius/W",R_total,"Net Resistance offered is")
Q_=(T_in-T_out)/R_total;//[W]
disp("W",Q_,"The steady rate of heat transfer through the wall is")
Q_p=Q_/A1;//[W/m^2]
disp("W/m^2",Q_p,"Heat Transfer per unit area is")
A_total=3*5;//Total Area of wall[m^2]
Q_total=Q_p*A_total;//[W]
disp("W",Q_total,"Thr rate of heat transfer through the entire wall")
