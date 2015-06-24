m=9.11*10^-28;//electron mass in grams//
v=1.1*10^8;//velocity of electron in cm per sec//
p=m*v;//momentum of electron in gram cm per sec//
printf('momentum of electron=p=10.01*10^-20gram cm per sec');
dp=p*10^-2;//Uncertainity in momentum in gram cm per sec//
printf('\nUncertainity in momentum=10.01*10^-22gram cm per sec');
h=6.625*10^-27;//plank's constant//
dx=(h*10^8)/(4*%pi*dp);//Uncertainity in position in Angstrum//
printf('\nUncertainity in position=dx=%fAngstrum',dx);


