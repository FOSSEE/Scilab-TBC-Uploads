//Exa 1.20
clc;
clear;
close;
//given data
cos_fi=0.8;//unitless
fi=acosd(cos_fi);
tan_fi=tand(fi);//unitless
//For Alternator A : 
cos_fi_A=0.9;//unitless
fi_A=acosd(cos_fi_A);
tan_fi_A=tand(fi_A);//unitless
//Formula : Active load, KW=V*I*cos_fi
//Formula : Reactive load, KVAR=V*I*sin_fi
ActiveLoad=8000;//in KW
ReactiveLoad=ActiveLoad*tan_fi;//in KVAR
//For A:
ActiveLoadA=5000;//in KW
ReactiveLoadA=ActiveLoadA*tan_fi_A;//in KVAR
//For B :
ActiveLoadB=ActiveLoad-ActiveLoadA;//in KW
ReactiveLoadB=ReactiveLoad-ReactiveLoadA;//in KVAR
tan_fi_B=ReactiveLoadB/ActiveLoadB;//unitless
fi_B=atand(tan_fi_B);//in degree
cos_fi=cosd(atand(tan_fi_B));//unitless
disp("Power factor of the other machine : "+string(cos_fi));