clc;
//page no 8-65
//Example 8.26
fmax=1600;//in kHz
fmin=550;//in kHz
IF=455;//in kHz
Csmax=350;//in pF
//Let Csmax/Csmin=C
C=(fmax/fmin)^2;
disp(C,'Csmax/Csmin=');
fomin=fmin+IF;
fomax=fmax+IF;
disp(+'kHz',fomin,'fomin=');
disp(+'kHz',fomax,'fomax=');
//Let Comax/Comin be denoted by C1
C1=(fomax/fomin)^2;
disp(C1,'Comax/Comin=');
Csmin=(Csmax/C);
disp(+'pF',Csmin,'Csmin=');
//C=[Csmax(Csmin+Cp)/Csmin(Csmax+Cp)]
//4.18=[350*(41.37+Cp)]/[41.37*(350+Cp)]
Cp=260;
disp(+'pF',Cp,'Cp=');
