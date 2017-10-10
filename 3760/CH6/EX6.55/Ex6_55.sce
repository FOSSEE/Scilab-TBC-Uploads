clc;
v=440; // rated voltage of distribution circuit
im=1200; // maximum current that can be supplied
n=0.85; // efficiency of induction motor
pf=0.8; // power factor of motor
ir=5; // ratio of starting current to full load current
disp('case a');
il=im/ir; //rated line current
p=sqrt(3)*v*il*n*pf; 
printf('Maximum KW rating is %f KW\n',p/1000);
disp('case b');
x=0.8; // rated of applied voltage and stepped down voltage
il=im/(x^2*ir); //rated line current
p=sqrt(3)*v*il*n*pf; 
printf('Maximum KW rating is %f KW\n',p/1000);
disp('case c');
// star-delta converter is same as autotransformer starter with 57.8 % tapping therefore
il=im/(0.578^2*ir); //rated line current
p=sqrt(3)*v*il*n*pf; 
printf('Maximum KW rating is %f KW\n',p/1000);
