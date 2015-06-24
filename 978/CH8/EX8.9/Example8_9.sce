//chapter-8,Example8_9,pg 500

ar=1//gain of rectifier

nc=40//turns ratio (1:40)

Vm=4//peak load voltage

PF=0.85//power factor

f=(1/%pi)*ar*Vm*nc*PF//frequency

printf("frequency of digital power meter \n")

printf("f=%.2f Hz",f)