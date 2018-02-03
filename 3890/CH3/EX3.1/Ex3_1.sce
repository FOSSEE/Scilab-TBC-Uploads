//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

E=220;                  //Emf of the tranformer in volt
f=60;                   //Frequency of the transformer in Hz
fl=5*10^-3;            //flux in wb

N1=E/(4.44*f*fl);                //turns in primary winding
N2=N1/2;                        //turns in secondary winding

printf('Number of turns in primary winding is %d\n',N1)
printf('Number of turns in secondary winding is %d\n',N2)
