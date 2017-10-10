 //Example 17.9//

//Extrinsic data
s1=60;//ohm^-1 m^-1 //conduvtivity
ln1=log(s1)
mprintf("ln1 = %f ohm^-1 m^-1",ln1)
t1=373;//K //Temperature
T1=1/t1
mprintf("\nT1 = %e k^-1",T1)
s2=54.8;//ohm^-1 m^-1//conductivity
ln2=log(s2)
mprintf("\nln2 = %f ohm^-1 m^-1",ln2)
t2=300;//K //Temperature
T2=1/t2
mprintf("\nT2 = %e k^-1",T2)

//Intrinsic Data
s3=60;//ohm^-1 m^-1 //conductivity
ln3=log(s3)
mprintf("\nln3 = %f ohm^-1 m^-1",ln3)
t3=408;//K //Temperature
T3=1/t3
mprintf("\nT3 = %e K^-1",T3)
s4=2.04;//ohm^-1 m^-1 //conductivity
ln4=log(s4)
mprintf("\nln4 = %f Ohm^-1 m^-1",ln4)
t4=300;//K //Temperaure
T4=1/t4
mprintf("\nT4 = %e K",T4)
x=[2.68 3.33 2.45 3.33];
y=[4.09 4.00 4.09 0.713];
plot2d(x,y, style=1)
ylabel("ln sigma (ohm^-1 m^-1)", "fontsize", 4);
xlabel("1/T*10^3 (K^-1)", "fontsize", 4 );

