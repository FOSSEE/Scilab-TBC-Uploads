//Calculate efficiency //Chapter 3
//Example 3.22
//page 231
clear;
clc;
disp("Example 3.22")
kVA=200;                //Rating of the transformer
Pin=3.4;                //power input to two transformer in watt
Pin2=5.2;
coreloss=Pin;           //core loss of two transformers
phi=acosd(0.8);
printf("\nCore loss of two transformer=%fkW",Pin)
printf("\nCore loss of each transformer=%fkW",(Pin/2))
printf("\nFull load copper loss of the two transformer=%fkW",Pin2)
printf("Therefore,full load copper loss of each transformer=%fkW",(Pin2/2));
effi=(kVA*cosd(phi)*100)/((kVA*cosd(phi))+(Pin/2)+(Pin2/2))
printf("\nFull load efficiency at 0.8 p.f. lagging=%fpercent",effi);