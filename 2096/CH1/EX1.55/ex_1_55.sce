//Example 1.55://NUMBER OF RODS
clc;
clear;
a=5000-1000;//NO. OF RODS WHERE LENGTH LIES BETWEEN 20MM AND 20.25MM
PY=0.4;//PROBABLITY THAT ROBABILITY THAT 4000 RODS HAVE A VLUE GREATER THAN 20MM AND LESS THAN 20.25MM
SD=(20.25-20)/1.3;//standard deviation
y=(20-19.25)/SD;//
PY1=0.4953;//ROBABILITY THAT 4000 RODS HAVE A VLUE GREATER THAN 20MM AND LESS THAN 20.25MM
NR=10000*PY1//NO. OF RODS WHERE LENGTH LIES BETWEEN 19.25MM AND 20MM
tr=NR+a;//total number of rods whose length lie betweem specified limits of 19.5mm and 20.25mm
disp(tr,"total number of rods whose length lie betweem specified limits of 19.5mm and 20.25mm")
