n1=17;n2=16;n3=14;n4=12;n5=11;n6=10;n7=7;n8=5;n9=3;n10=2
t1=51;t2=47;t3=43;t4=39;t5=34;t6=28;t7=22;t8=15;t9=9;t10=6

tncphr=n1+n2+n3+n4+n5+n6+n7+n8+n9+n10//no. of calls/hr.
Y=tncphr/60//rate of calls/min.
toct=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10//total system occupied time in min.
H=toct/tncphr//avg. holding time/call in min
Aav=Y*H
disp(Aav,'average traffic intensity Aav in Erlangs')
