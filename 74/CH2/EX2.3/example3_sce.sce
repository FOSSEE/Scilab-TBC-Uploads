//chapter 2
//example 2.3 page 76
//figure 2.36
Vios=8*10^-3;V=12;Vcc=12;Vee=12;//given
Rc=10;//let choose Rc less than 100 ohm
Rb=(V*Rc)/Vios //Vios=(Rc/Rb)*V
Rmax=Rb/10// let choose
Ra=Rmax*4;
disp(Ra)//thus resistance Ra is potentiometer which can be adjusted till output reaches zero value

