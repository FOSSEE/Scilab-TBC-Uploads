clear;
clc;

//Example3.16[The R-value of a Wood Frame Wall]
//Given:-
f_area_insu=0.75;//area fraction for the insulation section
f_area_stud=0.25;//area fraction for the stud
R_bstud=3.05;//Total unit thermal resistance of section between studs[m^.degree Celcius/W]
R_atstud=1.23;//Total unit thermal resistance of section at studs[m^.degree Celcius/W]
P=50;//Perimeter of the building[m]
H=2.5;//height of the walls[m]
T_in=22;//Temperature inside the walls[degree Celcius]
T_out=-2;//Temperature outside the walls[degree Celcius]
//Solution:-
U_bstud=1/R_bstud;//[W/m^2.degree Celcius]
U_atstud=1/R_atstud;//[W/m^2.degree Celcius]
Total_U=(f_area_insu*U_bstud)+(f_area_stud*R_atstud);//[W/m^2.degree Celcius]
disp("W/m^",Total_U,"Overall U factor is")
disp("degree Celcius.m^2/W",(1/Total_U),"Overall unit thermal Resistance is")
///Since glazing constitutes 20% of the walls,
A_wall=(0.80)*P*H;//[m^2]
Q_=Total_U*A_wall*(T_in-T_out);//[W]
disp("W",Q_,"The rate of heat loss through the walls under design conditions is")
//Answer is slighthly different from book because of no of digits after decimal pont used here is quite large