P=50000
lr=0.9

P0=P*1*0.9
effi=0.974
Pl=(1-effi)/effi*P0
Pi=Pl/2
Pcfl=Pi/lr/lr

pf=0.8
P0=P*pf
Pl=Pi+Pcfl
effi=P0/(P0+Pl)*100
disp(effi)

P0=P/2*lr
Pl=Pi+Pcfl/2/2
effi=P0/(P0+Pl)*100
disp(effi)

/////////calculation mistakes in the book
