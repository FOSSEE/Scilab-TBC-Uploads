
clear;
clc;
printf("\t Example 3.7\n");
D=.1;
l=3;             // l is length of bubble in cm
a=3.14*D*l;      // area in cm^2
Ca_o=0.0001;    //pure conc. of gas in g*mol/cc*atm
Ca=0;
NA=.482*10^-5;   // molar rate of absorption in g*moles/s
        //Pa_o and Ca_o indicates pure pressure and conc.
kl=NA/(a*(Ca_o-Ca));    //mass transfer coefficient acc. to higbie's penetration theory
Q=4;                    //volumetric flow rate in cc/s
A=3.14*.1*.1/4;         //area of flow
v=Q/A;                 //velocity of flow in cm/s

//timt t=bubble length/linear velocity;
t=l/v;
DAB=(kl^2)*3.14*t/4;    //diffusivity in cm^2/s
D_new=0.09;              //revised diameter reduced to.09
a_new=3.14*l*D_new;        //revised area
A_new=3.14*0.09*0.09/4;    //revised flow area
v_new=Q/A_new;            //revised velocity
printf("\nthe value of diffusivity of gas DAB is :%f cm/s",DAB/10^-5);

t_new=l/v_new;            //revised time
kl_new=2*(DAB/(3.14*0.0047))^0.5;    //revised mass transfer coefficient 
NA_new=kl_new*a_new*(Ca_o-Ca);       //revised molar rate absorption in g*moles/s
printf("\nthe value of NA_new is  :%f*10^-6 kmol/m^3",NA_new/10^-6);
//end