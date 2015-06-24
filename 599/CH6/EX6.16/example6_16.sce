
clear;
clc;
printf("\t Example 6.16\n");
m1=.12;                    //initial moisture content
dT=85;                    //product of 85 degree is used in design purpose
U=1700;                   //overall heat transfer coefficient
m2=.4;                    //final moisture content
r=20;                   //production rate
    //4 kg of moisture is present in 100 kg product
t=4*20/100;            // moisture content in 20 kg moisture
w=20-t;                //dry solid weight
i=w*m1/(1-m1);        //initial moisture content 
j=i-t                //water evaporated
ds=2296.1;           //latent heat for vaporisation at 85 degree in kj/kg
h=j*ds;                //heat required (assuming th esolid mix. enters at 85)
//U*A*dT = j*ds
A=h/(U*dT);            //surface area of the roller required to produce aproduction rate of 20 kg product per hour
printf("\n surface area of the roller required to produce aproduction rate of 20 kg product per hour:%f m^2",A/3.600);

//end