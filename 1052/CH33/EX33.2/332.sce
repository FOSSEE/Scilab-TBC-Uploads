clc;
//Example 33.2 page no 525
printf("Example 33.2 page no 525\n\n");
//unit conversion of poressure given in mmHg into various units
P=80//pressure given in mmHg
P1=P*(29.92/760)//pressure , in Hg
P2=P*(33.91/760)//pressure ,ft H2O
P3=P2*12//pressure ,in H2O
P4=P*(14.7/760)//pressure ,psia
P5=P*(2116/760)//pressure ,psfa
P6=P*(1.013e+5/760)//pressure ,N/m^2
printf("\n P1=%f inHg\n P2=%f ft H2O\nP3=%f in H2O\n P4=%f psia\nP5=%f psfa\nP6=%f N/m^2",P1,P2,P3,P4,P5,P6);//in book answers are round off after decimal but there are exact answers
