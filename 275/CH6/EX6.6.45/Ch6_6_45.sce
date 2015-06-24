clc
disp("Example 6.45")
printf("\n")
disp("Calculate output votage")
printf("Given")
disp("input voltage V1=-1v,V2=-2v,V3=3v")
disp("Resistance Rf=60k,R1=10k,R2=20k,R3=30k")
Rf=60*10^3;R1=10^4;R2=20*10^3;R3=30*10^3;
V1=-1;V2=-2;V3=3;
Vo=-[(Rf/R1)*V1+(Rf/R2)*V2+(Rf/R3)*V3]
printf("The output voltage is %f volt",Vo)
