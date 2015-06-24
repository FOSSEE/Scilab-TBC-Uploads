clc
clear
//DATA GIVEN
//CASE-1
//(T1-T2)/T1=1/6
//SO, T1=1.2(T2).........                Eqn(1)

//CASE-2
//T2 REDUCED BY 70 DEG. CELSIUS
//{T1-[T2-(70+273)]}/T1=1/3..............Eqn(2)
//2T1=3T2-1029

//By Eqn (1) and (2)
T2=(70+273)*3/(3-2*1.2);
T1=1.2*T2;

printf('(i) The Temperature of the Source, T1 is: %4.0f K or %4.0f deg. celsius. \n',T1,(T1-273));
printf('(ii) The Temperature of the Sink, T2 is: %4.0f K or %4.0f deg. celsius. \n',T2,(T2-273));
