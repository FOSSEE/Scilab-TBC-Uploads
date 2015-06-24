clc
clear
//DATA GIVEN
Pt=80;                      //power to be transmitted by the rope in kW
d=1.5;                      //diameter of pulley in m
N=200;                      //speed of the pulley in R.P.M.
alpha=45/2;                 //semi angle of groove in degrees
theta=160;                  //angle of contact in degrees
mu=0.3;                     //coefficient of friction
m=0.6;                      //mass of each rope per unit metre length
Ts=800;                     //safe pull in N

//centrifugal tension, Tc=m*v^2
v=(%pi)*d*N/60;                         //velocity of the rope in m/s
Tc=m*v^2;

T1=Ts-Tc;                               //tension in the tight side in N
//(T1/T2)=e^(mu*theta)
theta=theta*(%pi)/180;                  //theta converted into radians
alpha=alpha*(%pi)/180;                  //alpha converted into radians
T2=T1/(%e^(mu*theta/sin(alpha)));       //tension on the slack side in N
p=(T1-T2)*v;                            //power transmitted by the belt in watts

//no. of ropes required, n=Total power transmitted/Power transmitted by each rope
n=Pt/(p/1000);

//Initial tension in rope, To=(T1+T2+2Tc)/2
To=(T1+T2+2*Tc)/2;

printf(' (i) The Number of ropes required for the drives is: %1.1f say %1.0f. \n',n,n);
printf(' (ii) The Initial tension in the rope, To is: %3.2f N. \n',To);
