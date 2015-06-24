clc;
r=5;           //resistance in ohm
p=1000;        //power in Watt
va=100;        //potential diff in Volt for a
vb=100000;    //potential diff in volt for b
ia=p/va;      //calculating current
ib=p/vb;      //calculating current
ha=ia*ia*r;   //heat in Watt
hb=ib*ib*r;   //heat in Watt
disp(ha,"Heat produced by a in Watt = ");     //diplaying result
disp(hb,"Heat produced by b in Watt = ");   //diplaying result