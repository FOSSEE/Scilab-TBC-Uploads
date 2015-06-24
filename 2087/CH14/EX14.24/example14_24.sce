

//example14.24
//calculate normal depth and average shear stress at channel bed
clc;funcprot(0);
//given
B=3.5;          //bottom width of channel
n=0.016;        //manning n
S=2.6/10000;    //bed slope
Q=8;            //discharge
lfs=1;          //left side slope
rhs=1.5;        //rigth side slope
gamma_w=9.81;   //unit weigth of water

//using the equation of area and perimeter of trapezoidal section;Manning's formula and V=Q/A we get D as
//Manning formula: V=R^(2/3)*S^0.5/n
//(D*(3.5+1.25*D))^2.5=78.281+71.951*D
//solving it by trial and error method;we get
D=1.5;
R=(D*(3.5+1.25*D))/(3.5+3.217*D);
tau=gamma_w*R*S*1000;
tau=round(tau*100)/100;
mprintf("Depth of section=%f m.",D);
mprintf("\nAverage shear stress at channel bed=%f N/square-mm.",tau);
