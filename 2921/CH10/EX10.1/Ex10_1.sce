clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-10.1 Page No.195\n');

P=100;                //[lb/in^2] Hydraulic pressure
F=450;                //[lb] Extension force
Fr=400;               //[lb] Retraction force

A=F/P;                //[in^2] Cross section area
D=sqrt(4*A/%pi);      //[in] Bore of cylinder

mprintf('\n The bore of cylinder is %f in.',D);

//Use 2.5in bore cylinder

Dm=2.5;               //[in] Bore of cylinder
Dr=1;                 //[in] Diameter of rod
A2=%pi*Dm^2/4-%pi*Dr^2/4; //[in^2]
F2=P*A2;              //[lb] Force

if F2>=Fr then
    mprintf('\n The diameter of rod is %f in.',Dr);
else 
    mprintf('\n This would not meet requirement');
end

//This would meet requirement

Ab=%pi*Dm^2/4;        //[in^2] Cross section area
//Note-In the book V=180.7 is used instead of V=180.64158 
d=20;                //[in] stroke
V=Ab*d+A2*d;         //[in^3] Volume per cycle
t=2;                 //[s] Cycle time
FR=V/t;              //[in^3/s] Flowrate

FR=FR*7.48*60/1728;  //[gal/min] Flowrate

mprintf('\n Flow rate required is %f gal/min.',FR);
