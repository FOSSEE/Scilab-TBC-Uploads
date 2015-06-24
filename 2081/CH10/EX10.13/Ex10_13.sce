d=40*10^-3
npf=6
dts=d/npf//duration of a time slot of a voice frame
nbv=1944
nbpts=nbv/npf//no. of bits per time slot
db=d/nbv//duration of a bit in secs
npg=6
tg=db*npg//guard time in secs
c=3*10^8
Disrt=c*tg
Dismx=Disrt/2//max. distance
disp(dts,'duration of a time slot of a voice frame in secs')
disp(nbpts,'no. of bits per time slot')
disp(db,'duration of a bit in secs')
disp(tg,'guard time in secs')
disp(Dismx,'maximum distance between a cell site and a mobile in metre')
