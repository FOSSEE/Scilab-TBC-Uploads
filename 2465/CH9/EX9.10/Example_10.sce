//Chapter-9,Example 10,Page 221
clc();
close();

lamda_Ag = 58.3  

lamda_Cl=65.3

lamda_v=lamda_Ag+lamda_Cl   //Kohlrausch's law

Kv=1.24*10^-6   //specific conductivity

V=lamda_v/(Kv*1000)

wt=143.5    //molecular weight of AgCl

S=wt/V

printf('the solubility off AGCl is %.5f g/l',S)


//mistake in textbook
