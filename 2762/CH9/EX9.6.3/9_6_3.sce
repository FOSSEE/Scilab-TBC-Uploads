//Transport Processes and Seperation Process Principles
//Chapter 9
//Example 9.6-3
//Drying of Process Materials
//given data
//SI units
H=0.010;
Tdry=65.6+273;//dry bulb tempereature
Twet=28.9+273;//wet bulb temp obtained from the humidity chart
Hw=0.26;
Vh=(22.41/273)*Tdry*((1/28.7)+(1/18.02)*H);//((humid volume= molar vol of ideal gas at STP)/(Temp at STP)*(22.41/273)*T*((1/28.7)+(1/18.02)*H))
rho=(1+H)/Vh;//density of dry air + moiture
v=6.1;//velocity of air
G=v*3600*rho;
h=0.0204*(G^0.8);
lemdaw=2433*1000;
Rc=(h/lemdaw)*(Tdry-Twet)*3600;
A=0.457^2
rate=A*Rc;
//end933100355
H=0.010;
Tdryeng=150;//dry bulb tempereature
Tweteng=84;//wet bulb temp obtained from the humidity chart
rhoeng=0.0647;
veng=20;//velocity of air
Geng=veng*3600*rhoeng;
heng=0.0128*(Geng^0.8);
lemdaweng=1046;
Rceng=(heng/lemdaweng)*(Tdryeng-Tweteng);
Aeng=1.5*1.5;
rateeng=Aeng*Rceng;
mprintf("rate of drying using si units= %f kg H20/h",rate)
mprintf(" rate of drying using english units= %f lbm H20/h",rateeng)
