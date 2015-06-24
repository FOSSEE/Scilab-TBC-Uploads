//chapter1,Example1_9,pg 483

//assume that the voltmeter full scale reading is 12V which gives its resistance as 1.2*10^6 ohm which is in parallel with 10*10^6 ohm making as equivalent of Rq given as

R=1.2*10^6//voltmeter resistance

R1=10*10^6//voltage divider resistance

Rq=(R*R1)/(R+R1)//equivalent resistance

Vin=12//input voltage to divider network

Rs=4*10^6//series resistance

Vq=(Rq*Vin)/(Rq+Rs)//voltage across equivalent combination

Va=(R1*Vin)/(R1+Rs)//actual volatge

er=(Vq-Va)/Va//error

printf("\nerror in measurement\n")

printf("\ner=%.3f ",er)