//chapter 14
//example 14.7
//page 302

Ao_db=70 // db
Av_db=67 // db
Rout=1.5 // kilo ohm

// since 20*log(Ao)-20*log(Av)=Ao_db-Av_db we get
// 20*log(Ao/Av) = Ao_db-Av_db so
// Ao/Av = 10^((Ao_db-Av_db)/20) 
// and also Ao/Av=1+Rout/Rl since Av/Ao=Rl/(Rl+Rout)

// so making Rl as subject we get
Rl=Rout/(10^((Ao_db-Av_db)/20)-1)

printf("minimum value of load resistance = %.3f kilo ohm \n",Rl)

// the accurate answer is 3.636 kilo ohm
