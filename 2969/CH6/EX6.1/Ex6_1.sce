clc
clear
//DATA GIVEN
LCV=44700;              //LCV of fuel in kJ
afrn=20;                 //air parts=20 in air fuel mixture
afrd=1;                  //fuel parts=1 in air fuel mixture
Cpg=1.08;               //avg specific heat in kJ/kgK
T1=38+273;              //boiler room temp. in K

//heat of combustion=heat of gases
//1*44700=Mg*Cpg*(T2-T1)
T2=afrd*LCV/(afrn+afrd)/Cpg+T1;

printf(' The Maximum temp. T2 attained in the furnace of the boiler is:\n %5.0f Kelvin ',T2);
printf('or %5.0f degree celsius.\n',(T2-273));
