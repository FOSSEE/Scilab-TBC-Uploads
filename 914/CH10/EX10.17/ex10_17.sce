clc;
warning("off");
printf("\n\n example10.17 - pg477");
// given
Uzmax=3.455;  //[ft/sec]
m=32;
a1=-0.3527;
a2=-0.6473;
rbyro=0.880;
UzbyUzmax=1+a1*(rbyro^2)+a2*(rbyro^(2*m));
Uz=Uzmax*(UzbyUzmax);
Uzavg=(4/9)*Uzmax+(5/18)*(Uz+Uz);
printf("\n\n the average velocity is \n Uzavg = %f ft/sec \n\n Thus, in this example there is an inherent error of 5.5 percent, even before any experimental errors are introduced",Uzavg);
