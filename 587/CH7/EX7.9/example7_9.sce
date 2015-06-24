clear;
clc;

//Example7.9[Optimum Thickness of insulation]
//Given:-
k_insu=0.024;//[Btu/h.ft^2.degree Farenhiet]
Ts=180;//temp of exposed surface of oven[degree F]
Ta=75;//temp of ambient air[degree F]
L=12;//length[ft]
d=8;//Diameter[m]
time=5840;//[h/year]
ho=3.58;//Heat transfer coefficient on the outer surface[tu/h.ft^2.degree F]
unit_c1=0.75;//[$/therm]
unit_c2=2.70;//Unit cost of insulation[4/ft^2]
neta=0.8;//Efficiency
//Solution:-
As=(2*%pi*((d/2)^2))+(2*%pi*L*d/2);//Exposed surface area[ft^2]
disp(As)
Q=ho*ceil(As)*(Ts-Ta);//[Btu/h]
Q_total=(1/neta)*Q*time/(100000);//[therms]
disp("Therms",Q_total,"The total amount of heat loss from the surrounding is")
annual_c1=Q_total*unit_c1;//[$/year]
disp("per year",annual_c1,"The annual fuel cost of the oven before insulation is $")
R_conv=1/(ho*ceil(As));
R_insu=(1/12)/(k_insu*ceil(As));//Thickness id 1inch or 1/12 ft
Q_insu=(Ts-Ta)/(R_conv+R_insu);//[Btu/hr]
Q_insu_total=(1/neta)*Q_insu*time*(1/100000);//[therms]
disp("therms",Q_insu_total,"Total energy consumption by oven on being insulated")
annual_c2=Q_insu_total*unit_c1;//[$/yr]
insu_cost=(unit_c2*ceil(As));//Insulation cost[$]
Total_c=annual_c2+insu_cost;//[$]
disp(Total_c,"The sum of insulation cost and heat loss costs is $")
