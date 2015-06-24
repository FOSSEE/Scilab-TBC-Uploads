

//example 8.8
//calculate Heigth of dam when
//no tension is permissible
//factor of safety against slidingis 1.5
clc;funcprot(0);
//given

wb=3;          //width of dam;
miu=0.5;       //coefficient of friction
Sg=2.4;        //specific gravity of masonary
gamma_w=9.81;  //unit weigth of water
c=1;

//when uplift is considered
//when no tension is permissible then e=wb/6;

p1=wb*Sg*gamma_w;
p2=c*wb*gamma_w/2;
p3=p1-p2;
p4=p1*wb/2-p2*2;
p5=gamma_w/6;
d1=p4/p3; d2=p5/p3;
d3=1.5-d1;
H=((0.5-d3)/d2)^0.5;
H=round(H*100)/100;
mprintf("when uplift is considered:")
mprintf("\nHeigth of dam when no tension is permissible=%f m.",H);
H=p3*0.5/(1.5*p5*3);
mprintf("\nHeigth of dam when factor of safety against sliding is 1.5=%f m.",H);

//when uplift is not considered
p1=wb*Sg*gamma_w;
p4=p1*wb/2;
p5=gamma_w/6;
d1=p4/p1;
d2=p5/p1;
H=(0.5/d2)^0.5;
H=round(H*100)/100;
mprintf("\n\nwhen uplift is not considered:")
mprintf("\nHeigth of dam when no tension is permissible=%f m.",H);
H=p1*0.5/(1.5*p5*3);
mprintf("\nHeigth of dam when factor of safety against sliding is 1.5=%f m.",H);

