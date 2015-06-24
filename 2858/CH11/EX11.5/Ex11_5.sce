//example 11.5
clc; funcprot(0);
D=[6, 12, 20];
fc=[34.34, 54.94, 70.63];
alpha=[0.84, 0.71, 0.63];
dL=[6, 6, 8];
p=4*0.305;
Qs=0;
printf("  depth(m)\t fc(kN/m^2)\t alpha \t deltaL(m)\t Q(kN)\n");
for i=1:3
    Q(i)=alpha(i)*fc(i)*p*dL(i);
    Qs=Q(i)+Qs;
    printf("%.2f\t\t    %.2f\t  %.2f\t   %.2f\t\t %.2f\n",D(i),fc(i),alpha(i),dL(i),Q(i));
end
disp(Qs,"bearing force in kN");

