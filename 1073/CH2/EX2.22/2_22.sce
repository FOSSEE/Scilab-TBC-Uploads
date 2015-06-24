clc;
clear;
//Example 2.22
Ts=451;      //Steam temperature in [K]
Ta=294;      //Air temperature in [K]
Di=25;   //Internal diameter of pipe  [mm]
Di=Di/1000;              //[m]
od=33;   //Outer diameter of pipe   [mm] 
od=od/1000;              //[m]
hi=5678; //Inside heat transfer coefficient [W/(m^2.K)]
ho=11.36; //Outsideheat transfer coefficient  [W/(sq m.K)]
xw=(od-Di)/2;    //Thickness of steel pipe  [m]
k2=44.97;        //k for steel in W/(m.K)
k3=0.175;        //k for rockwool in W/(m.K)
ti=38/1000;           //thickness of insulation in [m]
r1=Di/2;         //[m]
r2=od/2;         //[m]
rm1=(r2-r1)/log(r2/r1);      //[m]
r3=r2+ti;            //[m]
rm2=(r3-r2)/log(r3/r2);  //[m]
Dm1=2*rm1;               //[m]
Dm2=2*rm2;               //[m]
//Rate of heat loss = dT/(sigma_R)
L=1;             //[m]
R1=1/(hi*%pi*Di*L);  //[K/W]
R2=xw/(k2*%pi*Dm1*L);
R3=(r3-r2)/(k3*%pi*Dm2*L);
Do=(od+2*ti) ;          //[mm]
R4=1/(ho*%pi*Do*L);              //[m]
sigma_R=R1+R2+R3+R4;
//Heat loss
dT=Ts-Ta;                //[K]
Q=dT/sigma_R;            //Heat loss [W/m]
printf("\nAns:Rate of heat loss is %f W/m",Q);
printf("\n NOTE:Slight variation in final answer due to lack of precision in calculation of R1,R2,R3 and R4.In book an approximate values of these is taken\n ")
