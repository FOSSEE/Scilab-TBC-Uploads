//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Strain gage
// Example 3// Page 176
disp("Rg=120")
disp("Sg=2;")
disp("Rs=120000")
Rg=120;    // given
Sg=2;  // gage factor
Rs=120000   //('enter the value of shunt resistor=:')
disp("The input bridge excitation is represented by Eex")
A=10   //('enter the amplifier gain=:')
// The shunt resistance has to be very large since we intend to measure only very small change in resistanc
eo=30*10^-3    //('enter the unbalanced bridge voltage=:')
dR=Rg/(Rg+Rs);
r=1;//ratio of resistances of adjacent arms
Eex=eo*(1+r)^2/(r*dR*A);
printf('The input excitation voltage is %fd V\n',Eex)
p1=2 *(1+v) // bridge factor
Eo=.5   //('enter the voltmeter reading when shunt is removed=:')
E_axial=Eo*(1+r)^2/(r*Sg*p1*Eex*A);
printf(' Axial strain is %fd\n ',E_axial)
E_trans=E_axial*v;
printf('The transverse strain is -%fd',E_trans)
