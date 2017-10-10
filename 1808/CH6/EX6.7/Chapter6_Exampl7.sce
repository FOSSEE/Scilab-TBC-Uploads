clc
clear
//INPUT DATA
h2=215;//enthalpy in kJ/kg
cp1=1.05;//Specific pressure
nc=0.8;//carnot efficiency in percentage
h1=192.56;//enthalpy in kJ/kg
h31=98.19;//enthalpy in kJ/kg
t3=48;//Temperature in K
t31=62.19;//Temperature in K
m=0.008;//mass of air in kg
h5=47.26;//enthalpy in kJ/kg
t0=317;//temperature in K
s3=0.2973;//at superheated table entropy in kJ/kgK
ha1=209.81;//at superheated table enthalpy in kJ/kg
sa1=0.6758;//at superheated table enthalpy in kJ/kgK
ha2=225.34;//at superheated table enthalpy in kJ/kg
sa2=0.7209;//at superheated table entropy in kJ/kgK
s2a=0.6984;//at superheated table entropy in kJ/kgK
s5=0.1857;//at superheated table entropy in kJ/kgK


//CALCULATIONS
h2a=((h2-h1)/nc)+h1;//enthalpy in kJ/kg
h3=h31-cp1*(t31-t3);//enthalpy in kJ/kg
wc=m*(h2a-h1);//compressor work in kJ/s
Rc=m*(h1-h3);//Refrigiration capacity in kW
Rc1=Rc*60/210;//Refrigiration capacity in TR
copv=Rc/wc;//COP of VCR system
x4=((h3-h5)/(h1-h5));//fraction
s4=s5++x4*(s2a-s5);//at superheated table entropy in kJ/kgK
ic=m*t0*(s4-s3);//Ireeversibility rate in valve in kW

//OUTPUT
printf('(a)The compressive work input is %3.5f kJ/s \n (b)Refrigiration capacity is %3.2f TR \n (c)COPvcr is %3.3f \n (d)Ireeversibility rate in valve is %3.4f kW',wc,Rc1,copv,ic)


11


