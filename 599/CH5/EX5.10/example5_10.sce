
clear;
clc;
printf("\t Example 5.10\n");
L=2000;                    //flow rate of water to be cooled in kg/min
T1=50;                    //temperature of inlet water
T2=30;                    //temp. of outlet water
H1=.016;                  //humidity of incoming air
cp=4.18;                  //specific heat of water
cpair=1.005;              //specific heat capcity of air
cpwater=1.884;            //specific heat capcity of water
tg=20;                    //temperature in degree
to=0;
ybar=0.016;               //saturated humidity at 20 degree
d=2502;                   //latent heat
Ky_a=2500;                //value of masstransfer coefficient in kg/hr*m^3*dybar
E=cpair*(tg-to)+(cpwater*(tg-to)+d)*ybar;    //enthalpy
    //similarly for other temperatures
T=[20 30 40 50 55]            //differnt temperature for different enthalpy calculation
i=1;
while(i<6)                   //looping for different enthalpy calculation of operating line
E(i)=cpair*(T(i)-to)+(cpwater*(T(i)-to)+d)*ybar;
printf("\n the enhalpy at :%f is :%f",T(i),E(i));
i=i+1;
end                //end of lop
ES=[60.735 101.79 166.49 278.72 354.92]        //enthalpy of eqll condition

plot(T,E,"o--");
plot(T,ES,"+-");
title("Fig.5.10(b),Temperature-Enthalpy plot");
xlabel("X-- Temperature, degree celcius");
ylabel("Y-- Enthalpy ,kj/kg");
legend("operating line","Enthalpy at saturated cond")

//locate (30,71.09) the operating conditions at the bottom of the tower and draw the tangent to the curve
Hg1=71.09;                     //point on the oper. line(incoming air)
Hg2=253;                       //point after drawing the tangent
slope=(Hg2-Hg1)/(T1-T2);       //we gt slope of the tangent
    //slope = (L*Cl/G)_min
Cl=4.18;
G_min=L*60*Cl/slope;                  //tangent gives minimum value of the gas flow rate
G_actual=G_min*1.3;                  //since actual flow rate is 1.3 times the minimum
slope2=L*Cl*60/G_actual;            //slope of operating line
Hg2_actual=slope2*(T1-T2)+Hg1;     //actual humidityat pt 2
Ggas=10000;                       //minimum gas rate in kg/hr*m^2
Area1=G_actual/Ggas;             //maximum area of the tower(based on gas)
Gliq=12000;                     //minimum liquid rate in kg/hr*m^2
Area2=60*L/Gliq;               //maximum area of the tower(based on liquid)
printf("\n \n the maximum area of the tower(based on gas) is :%f m^2",Area1);
printf("\n the maximum area of the tower(based on liquid) is :%f m^2",Area2);
dia=(Area1*4/3.14)^0.5;        //diameter of the tower in m

//let us assume the resistance to mass transfer lies basically in gas phase. hence the,interfacial conditions and the eqlb cond. are same.vertical line drawn between oper. and equl. line we get conditions of gas and equl. values are tabulated below as follows
 
 
//table
T=[20 30 40 50 55]            //differnt temperature for different enthalpy calculation
//enthaly 
H_bar=[101.79 133.0 166.49 210.0 278.72]        //H_bar i.e. at equl.
Hg=[71.09 103.00 140.00 173.00 211.09]        //Hg i.e. of operating line
i=1;
while(i<6)          //looping for different enthalpy calculation of operating line
y(i)=1/(H_bar(i)-Hg(i));
printf("\n the enhalpy at :%f is :%f",T(i),y(i));
i=i+1;
end                //end of lop
xset('window',1);
plot(Hg,y,"o-");
xtitle(" Fig.5.10(c) Example 10 (1/(Hf-Hg)) vs Hg","X-- Hg --->","Y-- 1/(Hf-Hg) ---->");

//area under this curve gives Ntog =4.26
Ntog=4.26;                //no. of transfer unit
Gs=10000;                  //gas flow rate
Htog=Gs/Ky_a;              // height of transfer unit
height=Ntog*Htog;          //height of the tower
printf("\n \nthe tower height is :%f m",height);


//make up water is based onevaporation loss(E),blow down loss(B),windage loss(W)                           M = E + B + W
W=.2/100 *L*60;                //windage loss(W)
B=0;                        //blow down loss neglected
E=G_actual*(.064-.016);     //assuming air leaves fully saturated
M = E + B + W;                //make up water is based onevaporation loss(E),blow down loss(B),windage loss(W)
printf("\n make up water is based onevaporation loss(E),blow down loss(B),windage loss(W) is :%f kg /hr",M);
//end