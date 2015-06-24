//Exa 1.17
clc;
clear;
close;
//given data
OutputPower=2500;//in KVA
OutputPower=2500*1000;//in VA
V=6600;//in Volt
  
  
//For first load i.e. Lighting load : 
KW1=2500;//in KWatts
KVAR1=0;//Kwatts
//For second load i.e. Motor load : 
KW2=5000;//in KWatts
cos_fi=0.707;//unitless
sin_fi=0.707;//unitless
KVAR2=KW2*sin_fi/cos_fi;//Kwatts
//For total load
TotalKW=KW1+KW2;//in KWatts
TotalKVAR=KVAR1+KVAR2;//Kwatts   
//For first Machine
KWm=4000;//in KWatts
cos_fi=0.8;//unitless
sin_fi=0.6;//unitless
KVARm=KWm*sin_fi/cos_fi;//Kwatts
//so, second machine will be supplying
KW=TotalKW-KWm;//in Kwatts
disp(KW,"KW output of second machine : ");
KVAR=TotalKVAR-KVARm;//in KWatts
tan_fi=KVAR/KW;//unitless
fi=atand(tan_fi);//ib degree
//Power factor of other machine
pf=cosd(fi);//unitless
disp("Power factor of other machine : "+string(pf)+" lagging");