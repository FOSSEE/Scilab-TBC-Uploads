//EX3_32 PG-3.67
clc
Vhl=10+.3;//high line voltage
Vll=10-.3;//low line voltage
SR=Vhl-Vll;//source regulation
Vnom=10;//nominal load voltage
%SR=SR/Vnom*100;//percentage source regulation
printf("\n percentage source regulation is %.0f %%",%SR)
