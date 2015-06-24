//Exa 1.19
clc;
clear;
close;
//given data
//Lighting Load : 
MW1=20;//load in Mwatts
KW1=MW1*1000;//in KWatts
KVAR1=0;//Kwatts
//Motor Load : 
MW2=40;//load in Mwatts
KW2=MW2*1000;//in KWatts
pf=0.8;//unitless
cos_fi=0.8
fi=acosd(pf);
sin_fi=sind(fi);//unitless
KVAR2=KW2*sin_fi/cos_fi;//Kwatts
//For Total Load : 
TotalKW=KW1+KW2;//load in Mwatts
TotalKVAR=KVAR1+KVAR2;//in KWatts
//For first machine : 
MWm=32;//load in Mwatts
KWm=MWm*1000;//in KWatts
cos_fi=0.866;//unitless
fi=acosd(cos_fi);
tan_fi=tand(fi);//unitless
KVARm=KWm*tan_fi;//in KWatts
//so, load supplied by the second machine
KW2=TotalKW-KWm;//in Kwatts
disp("Load of other machine,KW : "+string(KW2));
KVAR2=TotalKVAR-KVARm;//in Kwatts
tan_fi=KVAR2/KW2;//unitless
fi=atand(tan_fi);//in degree
cos_fi=cosd(atand(tan_fi));//unitless
disp("Power factor of the other machine : "+string(cos_fi));