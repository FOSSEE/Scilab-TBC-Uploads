// chapter 6
// example 6.20
// Determine fundamental and various harmonics for various angle
// page-344-345
clear;
clc;
clf;
// given
Es=415; // in V (voltage supply)
f=50; // supply frequency
R_L=100; // in ohm (load resistance)
alpha=0:30:180; // in radian
n1=1, n5=5, n7=7, n11=11, n13=13;
// calculate
Em=Es*sqrt(2/3); // calculation of peak voltage
printf("\nThe angles are\t\t\t\t")
for alpha=0:30:180
    printf("\t%.f\t",alpha);

end
printf("\nFundamental component of the supply current is");
for alpha=0:30:180
    Edc=(3*sqrt(3)*Em/%pi)*cosd(alpha); // calculation of average voltage
    Idc=Edc/R_L; // calculation of average output current
    Isn1=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n1)/n1);
    printf("\t%.3f\t",Isn1);

end
printf("\n%.fth harmonics component is\t\t",n5);
for alpha=0:30:180
    Edc=(3*sqrt(3)*Em/%pi)*cosd(alpha); // calculation of average voltage
    Idc=Edc/R_L; // calculation of average output current
    Isn5=abs((2*sqrt(2)*Idc/%pi)*cosd(30*5)/n5);
    printf("\t%.3f\t",Isn5);
end
printf("\n%.fth harmonics component is\t\t",n7);
for alpha=0:30:180
    Edc=(3*sqrt(3)*Em/%pi)*cosd(alpha); // calculation of average voltage
    Idc=Edc/R_L; // calculation of average output current
    Isn7=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n7)/n7);
    printf("\t%.3f\t",Isn7);
end
printf("\n%.fth harmonics component is\t\t",n11);
for alpha=0:30:180
    Edc=(3*sqrt(3)*Em/%pi)*cosd(alpha); // calculation of average voltage
    Idc=Edc/R_L; // calculation of average output current
    Isn11=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n11)/n11);
    printf("\t%.3f\t",Isn11);
end
printf("\n%.fth harmonics component is\t\t",n13);
for alpha=0:30:180
    Edc=(3*sqrt(3)*Em/%pi)*cosd(alpha); // calculation of average voltage
    Idc=Edc/R_L; // calculation of average output current
    Isn13=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n13)/n13);
    printf("\t%.3f\t",Isn13);
end
// plotting
// since to obtain a smooth graph alpha has been chosen as given below
alpha=[0:5:180]';
Edc=(3*sqrt(3)*Em/%pi)*cosd(alpha);
Idc=Edc/R_L;
Isn1=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n1)/n1);
Isn5=abs((2*sqrt(2)*Idc/%pi)*cosd(30*5)/n5);
Isn7=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n7)/n7);
Isn11=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n11)/n11);
Isn13=abs((2*sqrt(2)*Idc/%pi)*cosd(30*n13)/n13);
plot2d(alpha,[Isn1 Isn5 Isn7 Isn11 Isn13],[1,2,3,4,5],leg="Isn1@Isn5@Isn7@Isn11@Isn11",nax=[2,7,2,10],rect=[0,0,180,5]);
xlabel("alpha (degrees)");
title("Fundamental and harmonic current with alpha");
// Note: The answers vary slightly due to precise calculations upto 6 decimal digit