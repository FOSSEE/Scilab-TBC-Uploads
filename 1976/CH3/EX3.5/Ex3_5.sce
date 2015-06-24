
// To Calculate Voltage between middle wire and outer at each load point
// Page 109
clc;
clear;

Vs=220; //Supply Voltage
//Resistances of the respective Sections
Rab=0.2;
Rbc=0.2;
Rdh=0.2;
Rhe=0.2;
Ref=0.3;
Rfl=0.1;
Rlg=0.3;
Rij=0.25;
Rjk=0.2;
Ra=0.2;
Rd=0.4;
Ri=0.3;

//Currents following through the respective Section, Found using KCL
Iad=5;
Ibe=10;
Icl=12;
Ihi=15;
Ifj=5;
Igk=15;
Ia=Iad+Ibe+Icl; // Current through the positive wire
Iab=Ia-Iad;
Ibc=Ia-Iad-Ibe;
Ii=Ihi+Ifj+Igk; // Current through the negative wire
Id=Ii-Ia; //Current through the Middle wire
Idh=Iad+Id;
Ihe=Ihi-Idh;
Ief=Ibe-Ihe;
Ifl=Ief-Ifj;
Ilg=Igk;
Iij=Ii-Ihi;
Ijk=Ii-Ihi-Ifj;

//Voltage drops across each section
Va= Ra*Ia;
Vab=Iab*Rab;
Vbc=Ibc*Rbc;
Vi=Ii*Ri;
Vd=Id*Rd;
Vdh=Idh*Rdh;
Vhe=Ihe*Rhe;
Vef=Ief*Ref;
Vfl=Ifl*Rfl;
Vlg=Ilg*Rlg;
Vij=Iij*Rij;
Vjk=Ijk*Rjk;

//Voltage across the middle wire and the outer load points Using KVL
Vad=Vs-Va+Vd;
Vbe=Vad-Vab-Vhe+Vdh;
Vcl=Vbe-Vbc+Vfl+Vef;
Vhi=Vs-Vd-Vdh-Vi;
Vfj=Vhi-Vef+Vhe-Vij;
Vgk=Vfj-Vfl-Vlg-Vjk;

printf('The Voltages between middle wire and outer wire at each load point are:\n')
printf(' 1. Vad = %g V\n',Vad)
printf(' 2. Vbe = %g V\n',Vbe)
printf(' 3. Vcl = %g V\n',Vcl)
printf(' 4. Vhi = %g V\n',Vhi)
printf(' 5. Vfj = %g V\n',Vfj)
printf(' 6. Vgk = %g V\n',Vgk)
