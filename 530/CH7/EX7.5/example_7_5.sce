clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 7
// Heat Exchangers


// Example 7.5
// Page 304
printf("Example 7.5, Page 304 \n \n");

mc = 2000 ; // [kg/h]
Tce = 40 ; // [C]
Tci = 15 ; // [C]
Thi = 80 ; // [C]
U = 50 ; // OHTC, [W/m^2 K]
A = 10 ; // Area, [m^2]

// Using effective NTU method
// Assuming m_c*C_pc = (m*C_p)s
NTU = U*A/(mc*1005/3600);
e = (Tce-Tci)/(Thi-Tci);
// From fig 7.23, no value of C is found corresponding to the above values, hence assumption was wrong.
// So, m_h*C_ph must be equal to (m*C_p)s, proceeding by trail and error method


printf("m_h(kg/h      NTU      C        e        T_he(C)       T_he(C) (Heat Balance)");
 
mh = rand(1:5);
NTU = rand(1:5);
The = rand(1:5);
The2 = rand(1:5);

mh(1) = 200
NTU(1) = U*A/(mh(1)*1.161);
//Corresponding Values of C and e from fig 7.23
C = .416;
e = .78;
//From Equation 7.6.2 Page 297
The(1) = Thi - e*(Thi-Tci)
//From Heat Balance
The2(1) = Thi -  mc*1005/3600*(Tce-Tci)/(mh(1)*1.161);
printf("\n\n   %i     %.3f      %.3f      %.3f      %.2f       %.2f",mh(1),NTU(1),C,e,The(1),The2(1));

mh(2) = 250
NTU(2) = U*A/(mh(2)*1.161);
//Corresponding Values of C and e from fig 7.23
C = .520;
e = .69;
//From Equation 7.6.2 Page 297
The(2) = Thi - e*(Thi-Tci)
//From Heat Balance
The2(2) = Thi -  mc*1005/3600*(Tce-Tci)/(mh(2)*1.161);
printf("\n\n   %i     %.3f      %.3f      %.3f      %.2f       %.2f",mh(2),NTU(2),C,e,The(2),The2(2));

mh(3) = 300
NTU(3) = U*A/(mh(3)*1.161);
//Corresponding Values of C and e from fig 7.23
C = .624;
e = .625;
//From Equation 7.6.2 Page 297
The(3) = Thi - e*(Thi-Tci)
//From Heat Balance
The2(3) = Thi -  mc*1005/3600*(Tce-Tci)/(mh(3)*1.161);
printf("\n\n   %i     %.3f      %.3f      %.3f      %.2f       %.2f",mh(3),NTU(3),C,e,The(3),The2(3));

mh(4) = 350
NTU(4) = U*A/(mh(4)*1.161);
//Corresponding Values of C and e from fig 7.23
C = .728;
e = .57;
//From Equation 7.6.2 Page 297
The(4) = Thi - e*(Thi-Tci)
//From Heat Balance
The2(4) = Thi -  mc*1005/3600*(Tce-Tci)/(mh(4)*1.161);
printf("\n\n   %i     %.3f      %.3f      %.3f      %.2f       %.2f",mh(4),NTU(4),C,e,The(4),The2(4));

mh(5) = 400
NTU(5) = U*A/(mh(5)*1.161);
//Corresponding Values of C and e from fig 7.23
C = .832;
e = .51;
//From Equation 7.6.2 Page 297
The(5) = Thi - e*(Thi-Tci)
//From Heat Balance
The2(5) = Thi -  mc*1005/3600*(Tce-Tci)/(mh(5)*1.161);
printf("\n\n   %i     %.3f      %.3f      %.3f      %.2f       %.2f",mh(5),NTU(5),C,e,The(5),The2(5));

clf();
plot(mh,The,mh,The2,[295 295 200],[0 39.2 39.2])
xtitle('The vs mh','mh (kg/hr)','The (C)');
printf("\n\n From the plot, value of mh = 295 kg/hr and correspondingly The = 39.2 C")