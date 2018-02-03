//speed of driven shaft
//a-If the intermediate gears are on different shaft
TA=25
TD=100
NA=160  //rpm
aND=TA*NA/TD  //rpm
//b-If the intermediate gears are on the same shaft
bND=(75*25*160)/(50*100)  //rpm
printf("\ncase a\nND=%.2f rpm\ncase b\nND=%.2f rpm",aND,bND)
