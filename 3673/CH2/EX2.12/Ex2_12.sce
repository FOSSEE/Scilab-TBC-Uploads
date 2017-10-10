//Example 2_12 page no:76
clc
//applying kirchoff's law to the given circuit
R1=10//resistance in ohm
R2=3//resistance in ohm
R3=5//resistance in ohm
R4=1//resistance in ohm
V=10//source voltage
resistance=[(1/10+1/3),-1/3;-1/3,(1/3+1/5+1)]
current=[5,10]
volt=inv(resistance)'*current'//calculating V1 V2
disp(volt(1),"voltage across node 1 is (in V)")
disp(volt(2),"voltage across node 2 is (in V)")
I1=volt(1,1)/R1;
disp(I1,"current in branch I10 (in ampere)")
I2=(volt(1,1)-volt(2,1))/R2;
disp(I2,"current in branch I3 (in ampere)")
I3=volt(2,1)/R3
disp(I3,"current in branch I5 (in ampere)")
I4=(volt(2,1)-V)/R4
disp(I4,"current in branch I1 (in ampere)")
//in textbook node voltages are rounded off so that current in each branches are more approximated in text book so current values varies slightly with textbook
