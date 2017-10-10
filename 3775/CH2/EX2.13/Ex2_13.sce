//Ex 2.13 page 74

clc;
clear;
close;

Im=50;// A

printf('For half sine wave current : \n')
// theta=180;// degree
theta=180;// degree
Iav=Im/%pi;// A
Irms=Im/2;// A
FF=Irms/Iav;// form factor
ITav=Im/FF ; // A
printf('(i) Average ON State current  = %.2f A\n',ITav)    

// theta=90;// degree
theta=90;// degree
Iav=Im/2/%pi;// A
Irms=Im/2/sqrt(2);// A
FF=Irms/Iav;// form factor
ITav=Im/FF ; // A
printf('(ii) Average ON State current  = %.2f A\n',ITav)    

// theta=180;// degree
theta=180;// degree
Iav=Im*0.0213;// A
Irms=Im*0.0849;// A
FF=Irms/Iav;// form factor
ITav=Im/FF ; // A
printf('(iii) Average ON State current  = %.2f A\n',ITav)    

printf('\n For rectangular wave current : \n')
// theta=180;// degree
theta=180;// degree
Iav=Im/2;// A
Irms=Im/sqrt(2);// A
FF=Irms/Iav;// form factor
ITav=Im/FF ; // A
printf('(i) Average ON State current  = %.2f A\n',ITav)    

// theta=90;// degree
theta=90;// degree
Iav=Im/4;// A
Irms=Im/2;// A
FF=Irms/Iav;// form factor
ITav=Im/FF ; // A
printf('(ii) Average ON State current  = %.2f A\n',ITav)    

// theta=180;// degree
theta=180;// degree
Iav=Im/12;// A
Irms=Im/2/sqrt(3);// A
FF=Irms/Iav;// form factor
ITav=Im/FF ; // A
printf('(i) Average ON State current  = %.2f A\n',ITav)    
