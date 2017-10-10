clear; clc; close;

vgs1=1.35;//given
vgs2=1.8;//given
ids1=130*(10^(-6));//given
ids2=220*(10^(-6));//given
vt=0.5;//given
vgs3=0.9;//given
a=(log10(ids2/ids1))/(log10((vgs2-vt)/(vgs1-vt)));
ks=ids2/((vgs2-vt)^a);
ids=ks*((vgs3-vt)^a);
disp(a,'alpha based from figure)');//answer vary due to round off error
disp(ids,'saturation current for vgs=0.9(in amperes)');//answer vary due to round off error
