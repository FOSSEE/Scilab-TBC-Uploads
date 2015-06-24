//Example 4.22//constants and change of candle power per volt
clc;
clear;
close;
format('v',9)
c1=71.5;//candel power
v1=260;//in volts
c2=50;//candel power
v2=240;//in volts
b=log(c1/c2)/(log(v1/v2));//
a=c2/(v2)^(4.5);//
disp("part (a). ")
disp("constants are "+string(a)+" and "+string(b)+" ")
v=250;// in volts
p=4;//change in percentage
dvc=a*b*((v)^(b-1));//in candle per volts
dc=(1+(p/100))^b;//when voltage increase by 4%
pcp=((dc-1))*100;//percentage change in candle power
dc1=(1-(p/100))^b;//when voltage falls by 4%
pcp1=((dc1-1))*100;//percentage change in candle power
disp("part (b).")
disp(dvc,"change of candle power per volts")
//chage in candle power per volt is calculated wrong in the book
disp(pcp,"percentage change in candle power  when voltage increase by 4%")
disp(pcp1,"percentage change in candle power  when voltage falls by 4%")
