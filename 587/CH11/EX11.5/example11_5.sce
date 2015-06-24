clear;
clc;

//Example11.5[Heating of Glycerine in a Multipass Heat Exchanger]
//Given:-
//A 2,4 shell and tube heat exchanger
D=0.02;//Diameter[m]
L=60;//Length of tube[m]
Th_in=80,Th_out=40,Tc_in=20,Tc_out=50;//Inlet and Outlet temperatures water and glycerine[degree Celcius]
hi=160,ho=25;//Convective Heat transfer coefficients on both side of tube[W/m^2.degree Celcius]
Rf=0.0006;//Fouling Resistance[m^2.degree Celcius/W]
//Solution:-
As=%pi*D*L;//[m^2]
del_T1=Th_in-Tc_out;//[degree Celcius]
del_T2=Th_out-Tc_in;//[degree Celcius]
del_T_lm=(del_T1-del_T2)/log(del_T1/del_T2);//[degree Celcius]
disp("degree Celcius",del_T_lm,"The log mean temperature difference for the counter flow arrangement is")
F=0.91;//Correction Factor
//(a)
Ua=1/((1/hi)+(1/ho));//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",Ua,"In case of no fouling, the over all heat transfer coefficient is")
Qa=Ua*As*F*del_T_lm;//[W]
disp("W",ceil(Qa),"And the rate of heat transfer is")
//(b)
Ub=1/((1/hi)+(1/ho)+(Rf));//[W/m^2.degree Celcius
disp("W/m^2.degree Celcius",Ub,"When there is fouling on one of the surfaces, the overall heat transfer coefficient is")
Qb=Ub*As*F*del_T_lm;//[W]
disp("W",round(Qb),"And the rate of heat transfer is")