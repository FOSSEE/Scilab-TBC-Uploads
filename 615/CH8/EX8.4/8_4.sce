//Fuels and Combustion//
//Example 8.4//
WC=1.5642;//weight of coal sample in grams//
WH110=1.5022;//weight of sample after heating at 110 degrees in grams//
m=WC-WH110;//weight of moisture in the sample//
printf('weight of moisture in the sample=m=%fg',m);
pm=m*100/WC;//percentage of moisture in the sample//
printf('\npercentage of moisture in the sample=pm=%f',pm);
WH950=0.7628;//weight of sample after heating at 950 degrees in grams//
vm=WH110-WH950;//volatile matter in grams//
printf('\nWeight of volatile matter in the sample=vm=%fg',vm);
pvm=vm*100/WC;//percentage of voltaile matter//
printf('\npercentage of volatile matter in the sample=pvm=%f',pvm);
ac=0.2140;//Ash content left in the last in grams//
pac=ac*100/WC;//percentage of Ash content laft//
printf('\npercentage of Ash content in the sample=pac=%f',pac);
pfc=100-(pm+pvm-pac);//percentage of fixaed carbon//
printf('\npercentage of fixed carbon in the sample=pfc=%f',pfc);
