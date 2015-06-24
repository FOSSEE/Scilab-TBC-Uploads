//Example 4.15: 
clc;
clear;
close;
//given data :
A=1000;//gain without feedback
fctr=0.40;//gain reduction factor
Af=A-fctr*A;//gain with feedback
Beta=((A/Af)-1)/A;//feed back ratio
A2=800 ;//redued gain
Af2=((A2)/(1+(Beta*A2)));//
format('v',6)
disp(Af2,"(i) voltage gain  is ,=")
prfb= ((A-A2)/A)*100;//percentage reduction without feedback
format('v',4)
disp(prfb,"(ii) percentage reduction without feedback is,(%)=")
prwfb= ((Af-Af2)/Af)*100;//percentage reduction without feedback
format('v',6)
disp(prwfb,"percentage reduction with feedback is,(%)=")

