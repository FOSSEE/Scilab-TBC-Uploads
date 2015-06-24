//Chapter 14
//Example 14_6
//Page 365

x=139.7;
y=-42.8;

iab=x+%i*(y);
ibc=(x-40)+%i*(y+30);
icd=(x-160)+%i*(y+30);
ida=(x-220.6)+%i*(y+65);
va=11000/sqrt(3);
vb=va-(iab)*(1+%i*0.6);
vc=vb-(ibc)*(1.2+%i*0.9);
vd=vc-(icd)*(0.8+%i*0.5);

printf("Current in section AB = %.2f+j(%.2f) A \n", real(iab), imag(iab));

printf("Current in section BC = %.2f+j(%.2f) A \n", real(ibc), imag(ibc));

printf("Current in section CD = %.2f+j(%.2f) A \n", real(icd), imag(icd));

printf("Current in section DA = %.2f+j(%.2f) A \n\n", real(ida), imag(ida));

printf("Voltage at supply end = %d V/phase \n", va);

printf("Voltage at station B = %.2f+j(%.2f) V \n", real(vb), imag(vb));

printf("Voltage at station C = %.2f+j(%.2f) V \n", real(vc), imag(vc));

printf("Voltage at station D = %.2f+j(%.2f) V \n", real(vd), imag(vd));



