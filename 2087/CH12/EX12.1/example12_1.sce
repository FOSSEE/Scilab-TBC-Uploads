

//example 12.1
//calculate average hydraulic gradient
//uplift presuures and thickness of floor at 6m, 12m and 18m from u/s
clc;funcprot(0);
//given
rho=2.24;             //relative density of material
gamma_w=9.81;         //unit weigth of water
L=22;                 //total length
lc=(2*6)+L+(2*8);     //length of creep
hg=4/lc;              //hydraulic gradient
mprintf("avearge hydraulic gradient=%f.",hg);
//at 6 m from u/s
x=6;
lg=(6*2)+x;
h1=4*(1-lg/50);       //unbalanced head
up=gamma_w*h1;
t=4*h1/(3*(rho-1));
up=round(up*100)/100;
t=round(t*100)/100;
mprintf("\n\nuplift at 6 m from u/s=%f kN/square metre.",up);
mprintf("\nthickness at 6 m from u/s=%f m.",t);

//at 12 m from u/s
x=12;
lg=(6*2)+x;
h1=4*(1-lg/50);       //unbalanced head
up=gamma_w*h1;
t=4*h1/(3*(rho-1));
up=round(up*100)/100;
t=round(t*100)/100;
mprintf("\n\nuplift at 12 m from u/s=%f kN/square metre.",up);
mprintf("\nthickness at 12 m from u/s=%f m.",t);

//at 18m from u/s
x=18;
lg=(6*2)+x;
h1=4*(1-lg/50);       //unbalanced head
up=gamma_w*h1;
t=4*h1/(3*(rho-1));
up=round(up*10)/10;
t=round(t*100)/100;
mprintf("\n\nuplift at 18 m from u/s=%f kN/square metre.",up);
mprintf("\nthickness at 18 m from u/s=%f m.",t);



