//The ac Motor Control//
//Example 15.11//
PFm=0.5;//highest value of input factor//
Am=3.14/6;//highest value of input powerfactor occurs at 30 degrees//
A=cos(Am);//highest value of cosAm if firingangle ranging from 30 to 150//
printf('highest value of cosAm=%f',A);
PFl=(sqrt(2)*PFm)/A;
printf('\nlaod power factor of cyclo converter=%f',PFl);
