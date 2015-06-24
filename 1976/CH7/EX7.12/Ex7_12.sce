
//To Determine the tractive effort shared by the two locomotives
//Page 388
clc;
clear;

Da=1.27; //Loco A wheel diameter
Db=1.244; //Loco B wheel diameter
S=5; //Slip of both the Locomotives in Case 1
Sa=S; //Slip of Loco A in Case 2
Sb=4; //Slip of Loco B in Case 2
Ftta=11325; //Total Tractive Effort in Case 1
Fttb=1309; //Total Tractive Effort in Case 2
Ft=5227; //Full Load Tractive Effort of Loco

x=poly(0,'x'); //Variable for Tractive Effort Exerted by Loco A

//Slips are same
//For 11325 kg
//% Speed
NA=100-(S*x/Ft);
NB=100-(S*(Ftta-x)/Ft);
Rna=NB/NA; //Speed Ratio

Y1=Rna-(Da/Db); //Polynomial to find out 'x'
x=roots(Y1(2)); //Numerical Value of Tractive Effort shared by A

//Tractive Efforts Shared by A Loco and B Loco
FtAas=x;
FtBas=Ftta-x;

//For 1309 kg
//% Speed
x=poly(0,'x'); //Variable for Tractive Effort Exerted by Loco A
NA=100-(S*x/Ft);
NB=100-(S*(Fttb-x)/Ft);
Rn1=NB/NA; //Speed Ratio

Y2=Rn1-(Da/Db); //Polynomial to find out 'x'
x=roots(Y2(2)); //Numerical Value of Tractive Effort shared by A

//Tractive Efforts Shared by A Loco and B Loco
FtAbs=x;
FtBbs=Fttb-x;

//Different Slips
//For 11325 kg
//% Speed
x=poly(0,'x'); //Variable for Tractive Effort Exerted by Loco A
NA=100-(Sa*x/Ft);
NB=100-(Sb*(Ftta-x)/Ft);
Rna=NB/NA; //Speed Ratio

Y3=Rna-(Da/Db); //Polynomial to find out 'x'
x=roots(Y3(2)); //Numerical Value of Tractive Effort shared by A

//Tractive Efforts Shared by A Loco and B Loco
FtAad=x;
FtBad=Ftta-x;

//For 1309 kg
//% Speed
x=poly(0,'x'); //Variable for Tractive Effort Exerted by Loco A
NA=100-(Sa*x/Ft);
NB=100-(Sb*(Fttb-x)/Ft);
Rn2=NB/NA; //Speed Ratio

Y4=Rn2-(Da/Db); //Polynomial to find out 'x'
x=roots(Y4(2)); //Numerical Value of Tractive Effort shared by A

//Tractive Efforts Shared by A Loco and B Loco
FtAbd=x;
FtBbd=Fttb-x;

printf('The Tractive Effort shared A and B for:\n \n')
printf('i) Slips are %g percent for both the Locomotives for a Tractive effort of:\n',S)
printf('a) %g kg : %g kg by A and %g kg by B respectively\n',Ftta,FtAas,FtBas)
printf('b) %g kg : %g kg by A and %g kg by B respectively\n\n',Fttb,FtAbs,FtBbs)
printf('i) Slips are %g percent for A and %g percent for B for a Tractive effort of:\n',Sa,Sb)
printf('a) %g kg : %g kg by A and %g kg by B respectively\n',Ftta,FtAad,FtBad)
printf('b) %g kg : %g kg by A and %g kg by B respectively\n\n',Fttb,FtAbd,FtBbd)

//Please Note there is caluculation mistake calculation in the TextBook for the First Case
