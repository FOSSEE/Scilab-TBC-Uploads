

//example 6.5
//calculate maximum outflow discharge over spillway
//corresponding maximum level of water above spillway crest
clc;funcprot(0);
//given
I=[60 480 900 470 270 160 110 80 60];   //inflow
//for the first time interval 0 hours to 3 hours
I1=I(1);
I2=I(2);
t=3*3600;
ti=(I1+I2)*t/2;              //total inflow
//outflow=1.62*h1^1.5;
//storage change=(30+3h1)h1
//from the basic equation i.e total inflow=total outflow+change in storage
//on solving we get
//h1^2+0.54h1^1.5+10h1-0.972=0;
//solving it by trial and error method;we get
h1=0.0954;
//for the second time interval 3 hours to 6 hours
I1=I(2);
I2=I(3);
t=3*3600;
ti=(I1+I2)*t/2;              //total inflow
//outflow=0.0477+1.62*h2^1.5;
//storage change=(30+3h2)h2
//from the basic equation i.e total inflow=total outflow+change in storage
//on solving we get
//h2^2+0.54h2^1.5+10h2-3.4312=0;
//solving it by trial and error method;we get
h2=0.323;
//for the third time interval 6 hours to 9 hours
I1=I(3);
I2=I(4);
t=3*3600;
ti=(I1+I2)*t/2;              //total inflow
//outflow=0.2974+1.62*h3^1.5;
//storage change=(30+3h3)h3
//from the basic equation i.e total inflow=total outflow+change in storage
//on solving we get
//h3^2+0.54h3^1.5+10h3-5.7012=0;
//solving it by trial and error method;we get
h3=0.522;
//for the fourth time interval 9 hours to 12 hours
I1=I(4);
I2=I(5);
t=3*3600;
ti=(I1+I2)*t/2;              //total inflow
//outflow=0.611+1.62*h4^1.5;
//storage change=(30+3h4)h4
//from the basic equation i.e total inflow=total outflow+change in storage
//on solving we get
//h4^2+0.54h4^1.5+10h4-6.6208=0;
//solving it by trial and error method;we get
h4=0.601;
//for the fifth time interval 12 hours to 15 hours
I1=I(5);
I2=I(6);
t=3*3600;
ti=(I1+I2)*t/2;              //total inflow
//outflow=0.7548+1.62*h5^1.5;
//storage change=(30+3h5)h5
//from the basic equation i.e total inflow=total outflow+change in storage
//on solving we get
//h5^2+0.54h5^1.5+10h5-6.8936=0;
//solving it by trial and error method;we get
h5=0.624;
//for the sixth time interval 12 hours to 15 hours
I1=I(6);
I2=I(7);
t=3*3600;
ti=(I1+I2)*t/2;              //total inflow
//outflow=0.7985.62*h6^1.5;
//storage change=(30+3h6)h6
//from the basic equation i.e total inflow=total outflow+change in storage
//on solving we get
//h6^2+0.54h6^1.5+10h6-6.8492=0;
//solving it by trial and error method;we get
h6=0.620;
hmax=h5;
q=300*(h5)^1.5;        //equation given
q=round(q*100)/100;
mprintf("maximum outflow discharge over spillway=%f cumecs.",q);
mprintf("\nmaximum level of water above spillway crest=%f m.",h5);


