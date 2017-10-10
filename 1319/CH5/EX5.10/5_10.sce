//Calculate efficiency on unity pf at different cases

clc;
clear;

Pi=25*(10^3);

E1=2000;
E2=200;

Pil=350;
Pc=400;

// Full load efficiency

nfl=Pi*100/(Pi+Pil+Pc);

//Half Load efficiency

Pihl=Pi/2;// Half Load
nhl=Pihl*100/(Pihl+Pil+(Pc/4));

// Load at which maximum efficiency occurs

Piml=sqrt(Pil/Pc)*Pi;
Pcm=Pc*((Piml/Pi)^2);

printf('a) Efficiency at full load = %f percent \n',nfl)
printf('b) Efficiency at half load = %f percent \n',nhl)
printf('c) Maximum Efficiency will occur at %f KVA and the losses are each %d watt. \n',(Piml/1000),Pcm)
