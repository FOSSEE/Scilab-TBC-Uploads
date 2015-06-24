clc
//initialisation of variables
Q=50//cal
W=20//cal
Qi=36//cal
Wi=-13//cal
ui=10//cal
ub=22//cal
//CALCULATIONS
du=Q-W
Wibf=Qi-du
Qfi=du+Wi
Uf=du+ui
Qbf=Uf-ub
//results
printf(' \n Wibf= % 1f cal',Wibf)
printf(' \n Qfi= % 1f cal',Qfi)
printf(' \n Uf= % 1f cal',Uf)
printf(' \n Qbf= % 1f cal',Qbf)
