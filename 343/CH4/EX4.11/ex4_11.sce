clc;
V=230;           //Assigning values to parameters
VA=350;
loss=110;
I0=VA/V;
pf=loss/VA;
Iw=I0*pf;
Iu=sqrt(I0^2-Iw^2);
disp("Amperes",Iw,"Iron loss component of no load current");
disp("Amperes",Iu,"Magnatizing component of no load current");
disp(pf,"no load power factor");