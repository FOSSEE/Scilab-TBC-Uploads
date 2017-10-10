//16.1
clc;
disp('For star connected load')
Il=50000/((3^0.5)*440*0.85);
printf("\nLine current=%.2f A",Il)
Iph=Il;
printf("\nPhase current=%.2f A",Iph)
disp('For Delta connected load')
Il=50000/((3^0.5)*440*0.85);
printf("\nLine current=%.2f A",Il)
Iph=Il/(3^0.5);
printf("\nPhase current=%.2f A",Iph)