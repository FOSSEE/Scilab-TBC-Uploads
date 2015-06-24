disp("Experiment: a card is selected from a deck of 52 cards ") 
disp("A is the event of the selected card being a spade ")  
disp("B is the event of the selected card being a face card ")  
t=52 ;      //the total number of cards
s=13;      //number of spades
PA= s/t;  
disp(PA,'probability of selecting a spade')
f=12;     //number of face cards(jack,queen,king)
PB=f/t;
disp(PB,'probability of selecting a face card')
sf=3;    //number of spade face cards
Psf=sf/t;
disp(Psf,"probability of selecting a spade face card is:")