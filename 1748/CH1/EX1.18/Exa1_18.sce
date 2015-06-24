//Exa 1.18
clc;
clear;
close;
//given data
//Load1 : 
KW1=500;//in KWatts
KVAR1=0;//Kwatts
//Load2 : 
KW2=1000;//in KWatts
pf=0.9;//lagging
cos_fi=0.9;//unitless
fi=acosd(pf);
sin_fi=sind(fi);//unitless
KVAR2=KW2*sin_fi/cos_fi;//Kwatts
//Load3 : 
KW3=800;//in KWatts
pf=0.8;//lagging
cos_fi=0.8;//unitless
fi=acosd(pf);
sin_fi=sind(fi);//unitless
KVAR3=KW3*sin_fi/cos_fi;//Kwatts
//Load4 : 
KW4=500;//in KWatts
pf=0.9;//lagging
cos_fi=0.9;//unitless
fi=acosd(pf);
sin_fi=sind(fi);//unitless
KVAR4=-KW4*sin_fi/cos_fi;//Kwatts
//TOtalKW and TotalKVAR
TotalKW=KW1+KW2+KW3+KW4;//in KWatts
TotalKVAR=KVAR1+KVAR2+KVAR3+KVAR4;//in KWAtts
//For the first Machine :
KW=1500;//n Kwatts
cos_fi=0.95;//unitless
sin_fi=0.3123;//unitless
KVAR=KW*sin_fi/cos_fi;//Kwatts

KW1=TotalKW-KW;//in KWatts
KVAR1=TotalKVAR-KVAR;//in Volts
disp("KW supplied by other machine : "+string(TotalKW-KW));
disp("KVAR supplied by other machine : "+string(TotalKVAR-KVAR));
tan_fi=KVAR1/KW1;//unitless
//fi=atand(tan_fi);//in degree
cos_fi=cosd(atand(tan_fi));//unitless
disp("Power factor of the other machine : "+string(cos_fi));