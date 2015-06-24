//convert current sources to voltage

A=[95,-15;-15,135]
I=inv(A)*[20;-70]

i3=I(1)-I(2)

I60=0.5-I(1)
V60=I60*60
P1= 0.5*V60         //O.5 A source

I80=1+I(2)
V80=I80*80
P2=1*V80

disp(P2,P1)