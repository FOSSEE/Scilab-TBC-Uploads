//chapter3
//example3.3
//page49

// for constant Ec=-1.5
Eb1=100 // V
Eb2=150 // V
Ib1=7.5d-3 // A
Ib2=12d-3 // A

Eb_diff=Eb2-Eb1
Ib_diff=Ib2-Ib1

rp=Eb_diff/Ib_diff
rp_kilo_ohm=rp/10^3 //kilo ohm

printf("plate resistance = %.3f ohm or %.3f kilo ohm \n",rp,rp_kilo_ohm)

// for constant Eb=150
Ib1=5d-3 // A
Ib2=12d-3 // A
Ec1=-3 // V
Ec2=-1.5 // v

Ib_diff=Ib2-Ib1
Ec_diff=Ec2-Ec1

gm=Ib_diff/Ec_diff
gm_micro_mho=gm*10^6 //micro mho
printf("mutual conductance=%.3f mho or %.3f micro mho \n",gm,gm_micro_mho)

mu=rp*gm
printf("amplification factor = %.3f",mu)

//in book the answer of amplification factor i.e. 51.852 is rounded off to 52 
