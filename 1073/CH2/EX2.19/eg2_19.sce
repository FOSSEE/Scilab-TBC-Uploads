clc
clear
printf("Example 2.19.Page no.2.39")
//Given
x1=0.224 // m
k1=1.3 // W/(m.K)
k2=0.346 // W/(m.K)
T1=1588 // K
T2= 299 // K
QA=1830 // W/ sq metre //heat loss
//solution
printf("Q/A=(T1-T2)/x1/k1+x2/k2");
x2=k2*((T1-T2)*1/(QA)-(x1/k1))
x2=x2*1000;
printf("Thickness of insulation=%f mm",x2)
