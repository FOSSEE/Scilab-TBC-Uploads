    //EXAMPLE 3-4   PG NO-174
V=220;
Im=15.75+%i*21;
Z=5.33-%i*4;
LI=V/(sqrt(3)*Z);
TLI=LI+Im;
cos(-17.16)=0.955;
PF=sqrt(3)*0.955*V*32.42;
disp('i) Line current   =  '+string (LI)+'A ');
disp('i) TOTAL line current   =  '+string (TLI)+'A ');
disp('i) Power Factor   =  '+string (PF)+'W ');
