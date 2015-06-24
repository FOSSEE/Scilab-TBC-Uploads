//chapter10,Example10_9,pg 274

V1=200

//electrostatic focusing condition

//(sini/sinr)=(v2/v1)=sqrt(V2/V1)

//0.5mv2=eV

i=60*(%pi/180)//converting into radian

r=45*(%pi/180)//converting into radian

V2=200*((sin(i)/sin(r))^2)

pd=V2-V1//potential difference

printf("potential difference between two region\n")

printf("\npd=%.2f Volts",pd)