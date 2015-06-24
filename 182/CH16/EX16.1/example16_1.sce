//to find the source & load effects and load & line regulation
// example 16-1 in page 423
clc;
//Data Given
Es=[12 11.95]; // change in Dc power supply when ac drops by 10%
Eo=[12 11.9];// change in output voltage when load current goes from zero to  maximum
//calculation
printf("source effect=%d mV\n",(Es(1)-Es(2))*1000);
printf("line regulation=%.2f percent\n",(Es(1)-Es(2))*100/Es(1));
printf("load effect=%d mV\n",(Eo(1)-Eo(2))*1000);
printf("line regulation=%.2f percent\n",(Eo(1)-Eo(2))*100/Eo(1));
//result
//source effect=50 mV
//line regulation=0.42 percent
//load effect=99 mV
//line regulation=0.83 percent