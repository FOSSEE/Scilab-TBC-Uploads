

//example 3.2
//calculate
//Depth of moisture in root zone at field capacity
//Depth of moisture in root zone at permanent wilting point
//Depth of moisture available in root zone
clc;
//Given
gammad=15;        //dry weigth of soil
gammaw=9.81;      //unit weigth of water
Fc=0.3;           //field capacity
pwp=0.08;         //permanent wilting point
d=0.8;            //root zone depth
d1=gammad*Fc*1000/gammaw;
d2=gammad*pwp*1000/gammaw;
d3=gammad*d*(Fc-pwp)*1000/gammaw;
d1=round(d1);
d2=round(d2);
d3=round(d3);
mprintf("Depth of moisture in root zone at field capacity=%f mm/m.",d1);
mprintf("\nDepth of moisture in root zone at permanent wilting point=%f mm/m.",d2);
mprintf("\nDepth of moisture available in root zone=%f mm/m.",d3);
