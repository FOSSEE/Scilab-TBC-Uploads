

//example 5.1
//design an open wellin fine sand
clc;
//given
Q=0.003;        //required discharge
H=2.5;          //depression head
A=Q*3600/(0.5*H);
d=(4*A/%pi)^0.5;
d=round(d*100)/100
mprintf("Well diameter=%f m.",d);

//Alternative solution
C=7.5D-5;    //permeability constant from table 5.2
A=Q/(C*H);
d=(16*3/%pi)^0.5;
d=round(d*10)/10;
mprintf("\nBy alternative solution:")
mprintf("\nWell diameter=%f m",d);

