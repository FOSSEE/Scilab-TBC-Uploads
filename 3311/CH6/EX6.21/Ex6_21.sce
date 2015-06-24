// chapter 6
// example 6.21
// Determine average voltage
// page-345
clear;
clc;
clf;
// given
Es=415; // in V (voltage supply)
f=50; // supply frequency
alpha=[0:30:120]; // in degree
// calculate
Em=Es*sqrt(2/3); // calculation of peak voltage
for alpha=[0:30:120];
    if alpha<=60 then
       Edc=(3*sqrt(3)*Em/%pi)*cosd(alpha); // calculation of average voltage for alpha<=60
   else
       Edc=(3*sqrt(3)*Em/%pi)*(1+cosd(alpha+60)); // calculation of average voltage for alpha>60
    end
    printf("\nFor alpha=%.f,\tEdc=%.1f",alpha,Edc);
end
// plot
alpha=[0:5:60];
Edc1=(3*sqrt(3)*Em/%pi)*cosd(alpha);
plot2d(alpha,Edc1);
alpha=[60:5:120];
Edc2=(3*sqrt(3)*Em/%pi)*(1+cosd(alpha+60));
plot2d(alpha,Edc2);
xlabel("alpha (degrees)");
ylabel("Edc (avg)  (in V)");
title("Average output voltage with alpha");