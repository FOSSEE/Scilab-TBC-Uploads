clc;
//Example 6.4
//Page no 238



//solution

Frf=100; //kHz
fs1=1.5; //kHz
fs2=3; //kHz
R=50; //Ohm
E=5; //V

//(a)

disp("(a)The output frequency specctrum contains the two upper side frequencies: ");

Fusf1=Frf+fs1;
Fusf2=Frf+fs2;

disp('kHz',Fusf2,"Fusf2 = ",'kHz',Fusf1,"Fusf1 = ");

//(b)

disp("(b)Substituting in equation 6-6 yields, ");

PEP=([2*(0.707*E)^2]/R);

disp('W',PEP,"PEP = ")

disp("Substituting into equation 6-8 yields, ");

Pavg=(PEP/2);

disp('W',Pavg,"Pavg = ");
