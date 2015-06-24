//Find Rupture Energy Modulous Of Rupture and Notch Imapct Strength
//Ex:8.3
clc;
clear;
close;
l=0.1;//frictinal and windage losses in kgf-m
dr=5.9;//dial reading in kgf-m
u=dr-l;//in kgf-m
disp(u,"Rupture Energy (in kgf-m) = ");
t=10;//in mm
d=t/5;//depth of V-notch in mm
te=t-d;//effective thickness in mm
ve=75*10*te;//effective volume in cu. mm
vem=ve*10^-9;//in cu. m
mr=u/vem;//in kgf/sqm
disp(mr,"Modulous Of Rupture (in kgf/sqm) = ");
ae=t*te;//effective area of cross section in sqmm
aem=ae*10^-6;//in sqm
is=u/aem;//in kg/m
disp(is,"Notch Imapct Strength (in kg/m) = ");
ui=30;//in kgf-m
a=160;//angle in degrees
r=0.8;//swing radius in m
uf=ui-u;//in kgf-m
w=19.33;//weight of hammer in kgf-m
hf=uf/w;//in m
disp(hf,"Height risen by Hammer (in m) = ");
//hf=r*(1-cos(b))
b=acosd((r-hf)/r);//in degrees
disp(b,"Angle after Breaking the specimen (in degress) = ");