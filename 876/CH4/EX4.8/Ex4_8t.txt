//caption:find relative permittivity of specimen
//Ex4.8
clc
clear
close
C1=120//capacitance of first arm without specimen(in pF)
C3=150//capacitance of third arm without specimen(in pF)
R1=5000//resistance of first arm without specimen(in ohm)
R2=5000//resistance of second arm without specimen(in ohm)
C1o=200//capacitance of first arm with specimen(in pF)
C3o=900//capacitance of third arm with specimen(in pF)
R1o=5000//resistance of first arm with specimen(in ohm)
R2o=5000//resistance of second arm with specimen(in ohm)
Cs=(C3*R1)/R2
Css=(C3o*R1o)/R2o
er=Css/Cs
disp(er,'relative permittivity of the specimen=')