//clear//
//Caption:Program tofind the magnitude and phase of characteristic
//impedance Zo
//Example11.3
//page347
Zo = sym('sqrt(L/C)*(1-sqrt(-1)*R/(2*W*L))');
teta = sym('atan(-R/(2*W*L))');
disp(Zo,'Characteristic impedance  Zo =')
disp(teta,'The phase angle teta=')
//Result
//Characteristic impedance  Zo =   
//  sqrt(L/C)*(1-%i*R/(2*L*W))   
//The phase angle teta=   
// -atan(R/(2*L*W))  
