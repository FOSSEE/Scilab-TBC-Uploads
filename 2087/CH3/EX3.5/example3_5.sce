

//example 3.5
//calculate Field Capacity
clc;
//Given
d=2;            //root zone depth
Wc=0.05;        //existing water content
gammad=15;      //dry density of soil
gammaw=9.81;    //unit weigth of water
Vw=500          //water applied to the soil
Wl=0.1;         //water loss
A=1000;         //area of plot
Vu=Vw*0.9;      //volume of water used in soil  
Wu=Vu*gammaw;   //weigth of water used in soil
Ws=A*d*gammad;  //total dry weigth of soil
Wa=Wu*100/Ws;   //percent water added
Fc=Wc*100+Wa;   
Fc=round(Fc*100)/100;
mprintf("The Field Capacity of soil is=%f percent.",Fc);
