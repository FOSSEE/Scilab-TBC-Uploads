clc;
v=30;    //velocity in min/hr
v0=20;   //velocity in min/hr
t=1.5;    //time in sec
a=((v-v0)/t);     //calculating acc. 
t1=(36-30)/a;        //calculating time
disp(a,"Accelaration in (min/h)/sec = ");  //displaying result
disp(t1,"Time in second = ");     //displaying result