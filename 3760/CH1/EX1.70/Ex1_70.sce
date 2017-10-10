clc;
// Three core type transformers are given in fig 1.80
// For first core type transformer
im1=4; // magnetizing core
e2=100; // emf induced in secondary winding
B=1; // maximum flux density in Tesla
// mmf is directly proportional maximum flux in core i.e im*N(no. of turns)=kq(flux), k is proportionality constant
// for fig(80(b)),qm2(flux for core transformer 1)=qm1(flux for core transformer 2), that is flux in both coils in core transformer 2 is qm1/2;
//for upper coil im2*N is directly proportional to qm1/2
//for lower coil Im2*N is directly proportional to qm2/2
//adding above relation we get im2+Im2=4(magnetizing current)
Im2=im1/2;
im2=Im2; // magnetizing current of each coil is 2 A
imt=Im2+im2; //total magnetizing current for transformer 2
// since flux is same for both transformer, emf induced is also same
// since flux is same for both transformer, area is same , therefore magnetic flux density is also same
printf('Magnetizing current for transformer 2 is %f A\n',imt);
printf('emf induced in secondary for transformer 2 is %f v\n',e2);
printf('Magnetic flux density in transformer 2 is %f T\n',B);
// for fig (80(c)), qm3=qm1/2
// qm1~im1*N,qm3~im3*N; ~-sign of directly proportional (assumption)
// from above two relations, we get
im3=im1/4;
B3=B/2;
E2=e2/2;  
printf('Magnetizing current for transformer 3 is %f A\n',im3);
printf('emf induced in secondary for transformer 3 is %f v\n',E2);
printf('Magnetic flux density in transformer 3 is %f T\n',B3);  
