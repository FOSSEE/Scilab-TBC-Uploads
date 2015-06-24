//chapter-11,Example11_2,pg 344

Vtx=5//triangular peak(+/-)5

Vsx=(2/%pi)*Vtx//sinewave peak

//if n=3 then there are 2*3=6 break points these are at o/p voltages

n=3//break point parameter

Vs1=(2/%pi)*Vtx*sin((1*%pi)/((2*n)+1))

Vs2=(2/%pi)*Vtx*sin((2*%pi)/((2*n)+1))

Vs3=(2/%pi)*Vtx*sin((3*%pi)/((2*n)+1))

//calculating slopes

ms1=(((2*n)+1)/%pi)*(sin((%pi*(1+1))/((2*n)+1))-sin((%pi*1)/((2*n)+1)))

ms2=(((2*n)+1)/%pi)*(sin((%pi*(2+1))/((2*n)+1))-sin((%pi*2)/((2*n)+1)))

ms3=(((2*n)+1)/%pi)*(sin((%pi*(3+1))/((2*n)+1))-sin((%pi*3)/((2*n)+1)))

printf("break points\n")

printf("output voltages\n")

printf("Vs1=%.2f V  ",Vs1)

printf("Vs2=%.2f V  ",Vs2)

printf("Vs3=%.2f V\n",Vs3)

printf("segment slopes\n")

printf("ms1=%.2f  ",ms1)

printf("ms2=%.2f  ",ms2)

printf("ms3=%.2f \n",ms3)
