CDR=270.833*10^3
Tb=1/CDR//time of a bit
npslot=156.25
Tslot=Tb*npslot//time of a slot
nspf=8
Tf=nspf*Tslot//time of a frame
disp(Tb,'time duration of a bit Tb in secs')
disp(Tslot,'time duration of a time slot Tslot in secs')
disp(Tf,'time duration of a frame Tf in secs')
disp(Tf,'time duration for a user occupying a single time slot between two succesive transmissions in secs')
